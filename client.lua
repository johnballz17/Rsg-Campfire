-- client.lua
local RSGCore = exports['rsg-core']:GetCoreObject()
local campfire = 0
local isBusy = false

-- Initialize state on resource start
AddEventHandler('onClientResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        isBusy = false
        LocalPlayer.state:set("inv_busy", false, true)
        if campfire ~= 0 then
            SetEntityAsMissionEntity(campfire, false, false)
            DeleteObject(campfire)
            campfire = 0
        end
        print('[DEBUG] Resource started, reset state - isBusy: ' .. tostring(isBusy) .. ', campfire: ' .. tostring(campfire))
    end
end)

function loadAnimDict(dict)
    if not dict or dict == '' then return end
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(0)
    end
end

function playAnimation(ped, anim)
    if not anim or not anim.dict or not anim.name then
        print('[DEBUG] Invalid animation config: ' .. (anim and json.encode(anim) or 'nil'))
        return
    end
    loadAnimDict(anim.dict)
    print('[DEBUG] Requesting anim dict: ' .. anim.dict)
    local success = pcall(function()
        TaskPlayAnim(ped, anim.dict, anim.name, 8.0, -8.0, anim.duration or -1, anim.flag or 1, 0, false, false, false)
    end)
    if not success then
        print('[DEBUG] Animation failed: ' .. anim.dict .. '/' .. anim.name)
    else
        print('[DEBUG] Animation started: ' .. anim.dict .. '/' .. anim.name)
    end
end

function resetBusyState()
    isBusy = false
    LocalPlayer.state:set("inv_busy", false, true)
    print('[DEBUG] Reset inv_busy state - isBusy: ' .. tostring(isBusy) .. ', inv_busy: ' .. tostring(LocalPlayer.state.inv_busy))
end

function notify(message, type, duration)
    local success, err = pcall(function()
        if RSGCore and RSGCore.Functions.Notify then
            RSGCore.Functions.Notify(message, type, duration or 5000)
        else
            TriggerEvent('RSGCore:Notify', message, type, duration or 5000)
        end
    end)
    if not success then
        print('[DEBUG] Notify failed: ' .. err)
    else
        print('[DEBUG] Notify: ' .. message .. ' (' .. (type or 'info') .. ')')
    end
end

RegisterNetEvent('rsg-campfire:client:placeCampfire')
AddEventHandler('rsg-campfire:client:placeCampfire', function()
    print('[DEBUG] placeCampfire event triggered - isBusy: ' .. tostring(isBusy) .. ', campfire: ' .. tostring(campfire))
    -- Force reset state on each trigger
    if campfire ~= 0 then
        SetEntityAsMissionEntity(campfire, false, false)
        DeleteObject(campfire)
        campfire = 0
        print('[DEBUG] Cleaned up existing campfire entity')
    end
    isBusy = false
    LocalPlayer.state:set("inv_busy", false, true)
    print('[DEBUG] Forced state reset')

    isBusy = true
    LocalPlayer.state:set("inv_busy", true, true)
    print('[DEBUG] Set inv_busy to true')
    local playerPed = PlayerPedId()
    local anim = Config.Animations.placingCampfire
    if not anim then
        notify('Animation config missing!', 'error')
        resetBusyState()
        return
    end

    print('[DEBUG] Skipping animation for testing')
    -- playAnimation(playerPed, anim) -- Commented out for now

    print('[DEBUG] Starting Wait loop for ' .. Config.PlaceTime .. 'ms')
    Wait(Config.PlaceTime)
    print('[DEBUG] Wait completed')

    ClearPedTasks(playerPed)
    local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 2.0, -1.5)) -- Adjusted z offset
    print('[DEBUG] Attempting to place campfire at coords: ' .. x .. ', ' .. y .. ', ' .. z)
    RequestModel(Config.PlaceableCampfire)
    local modelLoaded = false
    for i = 1, 100 do
        if HasModelLoaded(Config.PlaceableCampfire) then
            modelLoaded = true
            break
        end
        Wait(50)
    end
    if not modelLoaded then
        notify('Failed to load campfire model!', 'error')
        resetBusyState()
        return
    end
    local prop = CreateObject(GetHashKey(Config.PlaceableCampfire), x, y, z, true, false, false)
    if not DoesEntityExist(prop) then
        notify('Failed to create campfire!', 'error')
        resetBusyState()
        return
    end
    print('[DEBUG] Campfire created with entity ID: ' .. prop)
    SetEntityHeading(prop, GetEntityHeading(playerPed))
    if not PlaceObjectOnGroundProperly(prop) then
        notify('Failed to place campfire on ground!', 'error')
        DeleteObject(prop)
        resetBusyState()
        return
    end
    campfire = prop
    resetBusyState()
    notify('Campfire placed!', 'success')

    -- Add ox_target option for the placed campfire
    exports.ox_target:addLocalEntity(campfire, {
        {
            label = 'Craft Items',
            icon = 'fa-solid fa-hammer',
            onSelect = function()
                print('[DEBUG] Craft Items selected via ox_target')
                TriggerEvent('rsg-campfire:client:openCraftMenu')
            end,
            canInteract = function(entity, distance)
                return not isBusy and distance <= Config.CraftDistance
            end
        }
    })

    -- Timeout to prevent infinite lock
    Citizen.CreateThread(function()
        Wait(10000) -- 10 seconds timeout
        if isBusy then
            print('[DEBUG] Timeout triggered, forcing reset')
            resetBusyState()
        end
    end)
end)

RegisterNetEvent('rsg-campfire:client:craftItem')
AddEventHandler('rsg-campfire:client:craftItem', function(data)
    local recipeName = data and (data.value or data.recipe)  -- ✅ Fix here
    print('[DEBUG] Crafting item instantly for recipe:', recipeName)

    if isBusy then return end
    isBusy = true
    LocalPlayer.state:set("inv_busy", true, true)
    print('[DEBUG] Set inv_busy to true for crafting:', recipeName)

    if not recipeName then
        print('[DEBUG] Invalid recipeName from menu data:', json.encode(data))
        notify('Invalid recipe selected!', 'error')
        resetBusyState()
        return
    end

    local recipe = Config.CraftingRecipes[recipeName]
    if not recipe then
        print('[DEBUG] Invalid recipe name:', recipeName)
        notify('Invalid recipe selected!', 'error')
        resetBusyState()
        return
    end

    TriggerServerEvent('rsg-campfire:server:craftItem', recipeName, 1)
    print('[DEBUG] Triggered server event for recipe:', recipeName)
    notify('Crafting request sent for ' .. (recipe.label or recipeName), 'success')
    resetBusyState()
end)






RegisterNetEvent('rsg-campfire:client:openCraftMenu')
AddEventHandler('rsg-campfire:client:openCraftMenu', function()
    if isBusy then
        notify('You are busy!', 'error')
        return
    end
    if campfire == 0 then
        notify('No campfire nearby!', 'error')
        return
    end

    local campfireCoords = GetEntityCoords(campfire)
    if #(GetEntityCoords(PlayerPedId()) - campfireCoords) > Config.CraftDistance then
        notify('You are too far from the campfire!', 'error')
        return
    end

    local elements = {}
    for recipeName, recipe in pairs(Config.CraftingRecipes) do
        table.insert(elements, {
            title = recipe.label or recipeName,
            description = recipe.description or 'No description available',
            icon = 'fa-solid fa-hammer',
            event = 'rsg-campfire:client:craftItem',
            args = { recipe = recipeName },
            type = 'client'
        })
    end

    if #elements == 0 then
        notify('No recipes available!', 'error')
        return
    end

    print('[DEBUG] Menu elements:', json.encode(elements))

    local success, result = pcall(function()
        exports.ox_lib:registerContext({
            id = 'campfire_craft',
            title = 'Campfire Crafting',
            position = Config.MenuPosition,
            options = elements
        })
        exports.ox_lib:showContext('campfire_craft')
    end)

    if not success then
        notify('Failed to open crafting menu. Ensure ox_lib is installed and running.', 'error')
        print('[DEBUG] ox_lib menu registration failed: ' .. result)
    else
        print('[DEBUG] Using ox_lib menu successfully')
    end
end)


if Config.Commands.campfire then
    RegisterCommand('campfire', function()
        TriggerEvent('rsg-campfire:client:placeCampfire')
    end, false)
end

if Config.Commands.extinguish then
    RegisterCommand('extinguish', function()
        if campfire == 0 then
            notify('No campfire to extinguish!', 'error')
            return
        end
        if isBusy then return end
        isBusy = true
        LocalPlayer.state:set("inv_busy", true, true)
        print('[DEBUG] Set inv_busy to true for extinguish')
        local playerPed = PlayerPedId()
        TaskStartScenarioInPlaceHash(playerPed, GetHashKey('WORLD_HUMAN_BUCKET_POUR_LOW'), 7000, true, 0, 0, false)
        notify('Putting out the campfire...', 'primary', 7000)
        Wait(7000)
        ClearPedTasksImmediately(playerPed)
        if campfire ~= 0 then
            SetEntityAsMissionEntity(campfire, false, false)
            DeleteObject(campfire)
            campfire = 0
        end
        resetBusyState()
        notify('Campfire extinguished!', 'success')
    end, false)
end
-- Ensure inv_busy is reset on script error or resource stop
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        if isBusy then
            resetBusyState()
        end
        if campfire ~= 0 then
            DeleteObject(campfire)
            campfire = 0
        end
        print('[DEBUG] Resource stopped, cleaned up state')
    end
end)

-- Temporary command to test menu
RegisterCommand('testmenu', function()
    print('[DEBUG] Test menu command triggered')
    TriggerEvent('rsg-campfire:client:openCraftMenu')
end, false)