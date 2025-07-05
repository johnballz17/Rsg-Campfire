-- server.lua
local RSGCore = exports['rsg-core']:GetCoreObject()

-- Use campfire kit
RSGCore.Functions.CreateUseableItem('campfire_kit', function(source, item)
    local Player = RSGCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName(item.name) then
        TriggerClientEvent('rsg-campfire:client:placeCampfire', source)
        Player.Functions.RemoveItem(item.name, 1)
        TriggerClientEvent('rsg-inventory:client:ItemBox', source, RSGCore.Shared.Items[item.name], 'remove', 1)
    else
        TriggerClientEvent('RSGCore:Notify', source, 'You don\'t have a campfire kit!', 'error')
    end
end)

-- Craft item
RegisterServerEvent('rsg-campfire:server:craftItem')
AddEventHandler('rsg-campfire:server:craftItem', function(recipeName, quantity)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if not Player then return end
    local recipe = Config.CraftingRecipes[recipeName]
    if not recipe then return end

    -- Check ingredients
    for _, ingredient in ipairs(recipe.ingredients) do
        if not Player.Functions.GetItemByName(ingredient.name) or Player.Functions.GetItemByName(ingredient.name).amount < (ingredient.count * quantity) then
            TriggerClientEvent('RSGCore:Notify', src, 'Not enough materials for this recipe!', 'error')
            return
        end
    end

    -- Remove ingredients and add crafted item instantly
    for _, ingredient in ipairs(recipe.ingredients) do
        Player.Functions.RemoveItem(ingredient.name, ingredient.count * quantity)
        TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[ingredient.name], 'remove', ingredient.count * quantity)
    end

    Player.Functions.AddItem(recipe.reward.name, recipe.reward.count * quantity)
    TriggerClientEvent('rsg-inventory:client:ItemBox', src, RSGCore.Shared.Items[recipe.reward.name], 'add', recipe.reward.count * quantity)
    TriggerClientEvent('RSGCore:Notify', src, 'You crafted ' .. recipe.label, 'success')
end)