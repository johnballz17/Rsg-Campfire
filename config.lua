Config = {}

Config.PlaceableCampfire = "p_campfire01x" -- Safe default campfire prop
Config.CraftDistance = 2.0
Config.PlaceTime = 10000 -- 10 seconds
Config.CraftTime = 15000 -- 15 seconds

Config.CraftingRecipes = {
    ["stewop"] = {
        label = "Stew",
        category = "Eat",
        ingredients = {{name = "provision_meat_game", count = 5}, {name = "salt", count = 1}},
        reward = {name = "stew", count = 1},
        job = 0,
        description = "Recipe: 5x Meat, 1x Salt"
    },
    ["breadop"] = {
        label = "bread",
        category = "Eat",
        ingredients = {{name = "salt", count = 1}},
        reward = {name = "bread", count = 1},
        job = 0,
        description = "Recipe: 1x Salt"
    },
    ["beefjerkyop"] = {
        label = "beefjerky",
        category = "Eat",
        ingredients = {{name = "salt", count = 1}},
        reward = {name = "beefjerky", count = 1},
        job = 0,
        description = "Recipe: 1x Salt"
    },
    ["cooked_gamey_meatop"] = {
        label = "Gamey Meat (Cooked)",
        category = "Eat",
        ingredients = {{name = "gamey_meat", count = 1}},
        reward = {name = "cooked_Gamey_meat", count = 1},
        job = 0,
        description = "Recipe: 1x Gamey Meat"
    },
    ["cooked_meat_gameop"] = {
        label = "Game Meat (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_game", count = 1}},
        reward = {name = "cooked_meat_game", count = 1},
        job = 0,
        description = "Recipe: 1x Game Meat"
    },
    ["cooked_small_game_meatop"] = {
        label = "Small Game Meat (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_game_small", count = 1}},
        reward = {name = "cooked_small_game_meat", count = 1},
        job = 0,
        description = "Recipe: 1x Small Game Meat"
    },
    ["cooked_meat_game_birdop"] = {
        label = "Game Bird (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_game_bird", count = 1}},
        reward = {name = "cooked_meat_game_bird", count = 1},
        job = 0,
        description = "Recipe: 1x Game Bird"
    },
    ["cooked_meat_gristly_muttonop"] = {
        label = "Gristly Mutton (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_gristly_mutton", count = 1}},
        reward = {name = "cooked_meat_gristly_mutton", count = 1},
        job = 0,
        description = "Recipe: 1x Gristly Mutton"
    },
    ["cooked_meat_mature_venisonop"] = {
        label = "Mature Venison (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_mature_venison", count = 1}},
        reward = {name = "cooked_meat_mature_venison", count = 1},
        job = 0,
        description = "Recipe: 1x Mature Venison"
    },
    ["cooked_meat_gritty_fishop"] = {
        label = "Gritty Fish (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_gritty_fish", count = 1}},
        reward = {name = "cooked_meat_gritty_fish", count = 1},
        job = 0,
        description = "Recipe: 1x Gritty Fish"
    },
    ["cooked_meat_herptileop"] = {
        label = "Herptile Meat (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_herptile", count = 1}},
        reward = {name = "cooked_meat_herptile", count = 1},
        job = 0,
        description = "Recipe: 1x Herptile Meat"
    },
    ["cooked_meat_crustaceanop"] = {
        label = "Crustacean Meat (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_crustacean", count = 1}},
        reward = {name = "cooked_meat_crustacean", count = 1},
        job = 0,
        description = "Recipe: 1x Crustacean Meat"
    },
    ["cooked_meat_exotic_birdop"] = {
        label = "Exotic Bird (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_exotic_bird", count = 1}},
        reward = {name = "cooked_meat_exotic_bird", count = 1},
        job = 0,
        description = "Recipe: 1x Exotic Bird"
    },
    ["cooked_meat_flakey_fishop"] = {
        label = "Flakey Fish (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_flakey_fish", count = 1}},
        reward = {name = "cooked_meat_flakey_fish", count = 1},
        job = 0,
        description = "Recipe: 1x Flakey Fish"
    },
    ["cooked_meat_plump_birdop"] = {
        label = "Plump Bird (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_plump_bird", count = 1}},
        reward = {name = "cooked_meat_plump_bird", count = 1},
        job = 0,
        description = "Recipe: 1x Plump Bird"
    },
    ["cooked_meat_prime_beefop"] = {
        label = "Prime Beef (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_prime_beef", count = 1}},
        reward = {name = "cooked_meat_prime_beef", count = 1},
        job = 0,
        description = "Recipe: 1x Prime Beef"
    },
    ["cooked_meat_stringyop"] = {
        label = "Stringy Meat (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_meat_stringy", count = 1}},
        reward = {name = "cooked_meat_stringy", count = 1},
        job = 0,
        description = "Recipe: 1x Stringy Meat"
    },
    ["cooked_porkop"] = {
        label = "Pork (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_pork", count = 1}},
        reward = {name = "cooked_pork", count = 1},
        job = 0,
        description = "Recipe: 1x Pork"
    },
    ["cooked_gator_meatop"] = {
        label = "Gator Meat (Cooked)",
        category = "Eat",
        ingredients = {{name = "provision_gator_meat", count = 1}},
        reward = {name = "cooked_gator_meat", count = 1},
        job = 0,
        description = "Recipe: 1x Gator Meat"
    },
    ["bluegil_ms_op"] = {
        label = "Bluegil (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishbluegil_01_ms", count = 1}},
        reward = {name = "cooked_fishbluegil_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Bluegil (Medium)"
    },
    ["bluegil_sm_op"] = {
        label = "Bluegil (Small, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishbluegil_01_sm", count = 1}},
        reward = {name = "cooked_fishbluegil_sm", count = 1},
        job = 0,
        description = "Recipe: 1x Bluegil (Small)"
    },
    ["bullheadcat_ms_op"] = {
        label = "Bullhead Catfish (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishbullheadcat_01_ms", count = 1}},
        reward = {name = "cooked_fishbullheadcat_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Bullhead Catfish (Medium)"
    },
    ["bullheadcat_sm_op"] = {
        label = "Bullhead Catfish (Small, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishbullheadcat_01_sm", count = 1}},
        reward = {name = "cooked_fishbullheadcat_sm", count = 1},
        job = 0,
        description = "Recipe: 1x Bullhead Catfish (Small)"
    },
    ["chainpickerel_ms_op"] = {
        label = "Chain Pickerel (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishchainpickerel_01_ms", count = 1}},
        reward = {name = "cooked_fishchainpickerel_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Chain Pickerel (Medium)"
    },
    ["chainpickerel_sm_op"] = {
        label = "Chain Pickerel (Small, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishchainpickerel_01_sm", count = 1}},
        reward = {name = "cooked_fishchainpickerel_sm", count = 1},
        job = 0,
        description = "Recipe: 1x Chain Pickerel (Small)"
    },
    ["channelcatfish_lg_op"] = {
        label = "Channel Catfish (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishchannelcatfish_01_lg", count = 1}},
        reward = {name = "cooked_fishchannelcatfish_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Channel Catfish (Large)"
    },
    ["channelcatfish_xl_op"] = {
        label = "Channel Catfish (Extra Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishchannelcatfish_01_xl", count = 1}},
        reward = {name = "cooked_fishchannelcatfish_xl", count = 1},
        job = 0,
        description = "Recipe: 1x Channel Catfish (Extra Large)"
    },
    ["lakesturgeon_lg_op"] = {
        label = "Lake Sturgeon (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishlakesturgeon_01_lg", count = 1}},
        reward = {name = "cooked_fishlakesturgeon_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Lake Sturgeon (Large)"
    },
    ["largemouthbass_lg_op"] = {
        label = "Largemouth Bass (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishlargemouthbass_01_lg", count = 1}},
        reward = {name = "cooked_fishlargemouthbass_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Largemouth Bass (Large)"
    },
    ["largemouthbass_ms_op"] = {
        label = "Largemouth Bass (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishlargemouthbass_01_ms", count = 1}},
        reward = {name = "cooked_fishlargemouthbass_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Largemouth Bass (Medium)"
    },
    ["longnosegar_lg_op"] = {
        label = "Longnose Gar (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishlongnosegar_01_lg", count = 1}},
        reward = {name = "cooked_fishlongnosegar_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Longnose Gar (Large)"
    },
    ["muskie_lg_op"] = {
        label = "Muskie (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishmuskie_01_lg", count = 1}},
        reward = {name = "cooked_fishmuskie_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Muskie (Large)"
    },
    ["northernpike_lg_op"] = {
        label = "Northern Pike (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishnorthernpike_01_lg", count = 1}},
        reward = {name = "cooked_fishnorthernpike_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Northern Pike (Large)"
    },
    ["perch_ms_op"] = {
        label = "Perch (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishperch_01_ms", count = 1}},
        reward = {name = "cooked_fishperch_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Perch (Medium)"
    },
    ["perch_sm_op"] = {
        label = "Perch (Small, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishperch_01_sm", count = 1}},
        reward = {name = "cooked_fishperch_sm", count = 1},
        job = 0,
        description = "Recipe: 1x Perch (Small)"
    },
    ["rainbowtrout_lg_op"] = {
        label = "Rainbow Trout (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishrainbowtrout_01_lg", count = 1}},
        reward = {name = "cooked_fishrainbowtrout_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Rainbow Trout (Large)"
    },
    ["rainbowtrout_ms_op"] = {
        label = "Rainbow Trout (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishrainbowtrout_01_ms", count = 1}},
        reward = {name = "cooked_fishrainbowtrout_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Rainbow Trout (Medium)"
    },
    ["redfinpickerel_ms_op"] = {
        label = "Redfin Pickerel (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishredfinpickerel_01_ms", count = 1}},
        reward = {name = "cooked_fishredfinpickerel_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Redfin Pickerel (Medium)"
    },
    ["redfinpickerel_sm_op"] = {
        label = "Redfin Pickerel (Small, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishredfinpickerel_01_sm", count = 1}},
        reward = {name = "cooked_fishredfinpickerel_sm", count = 1},
        job = 0,
        description = "Recipe: 1x Redfin Pickerel (Small)"
    },
    ["rockbass_ms_op"] = {
        label = "Rock Bass (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishrockbass_01_ms", count = 1}},
        reward = {name = "cooked_fishrockbass_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Rock Bass (Medium)"
    },
    ["rockbass_sm_op"] = {
        label = "Rock Bass (Small, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishrockbass_01_sm", count = 1}},
        reward = {name = "cooked_fishrockbass_sm", count = 1},
        job = 0,
        description = "Recipe: 1x Rock Bass (Small)"
    },
    ["salmonsockeye_lg_op"] = {
        label = "Sockeye Salmon (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishsalmonsockeye_01_lg", count = 1}},
        reward = {name = "cooked_fishsalmonsockeye_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Sockeye Salmon (Large)"
    },
    ["salmonsockeye_ml_op"] = {
        label = "Sockeye Salmon (Medium-Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishsalmonsockeye_01_ml", count = 1}},
        reward = {name = "cooked_fishsalmonsockeye_ml", count = 1},
        job = 0,
        description = "Recipe: 1x Sockeye Salmon (Medium-Large)"
    },
    ["salmonsockeye_ms_op"] = {
        label = "Sockeye Salmon (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishsalmonsockeye_01_ms", count = 1}},
        reward = {name = "cooked_fishsalmonsockeye_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Sockeye Salmon (Medium)"
    },
    ["smallmouthbass_lg_op"] = {
        label = "Smallmouth Bass (Large, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishsmallmouthbass_01_lg", count = 1}},
        reward = {name = "cooked_fishsmallmouthbass_lg", count = 1},
        job = 0,
        description = "Recipe: 1x Smallmouth Bass (Large)"
    },
    ["smallmouthbass_ms_op"] = {
        label = "Smallmouth Bass (Medium, Cooked)",
        category = "Eat",
        ingredients = {{name = "a_c_fishsmallmouthbass_01_ms", count = 1}},
        reward = {name = "cooked_fishsmallmouthbass_ms", count = 1},
        job = 0,
        description = "Recipe: 1x Smallmouth Bass (Medium)"
    }
}

Config.Consumables = {
    Eat = {
        ["bread"] = {
            item = "bread",
            hunger = 25,
            thirst = 0,
            stress = 5,
            propname = "p_bread_14_ab_s_a",
            poison = 15,
            poisonRate = 0.4,
            anim = "sandwich"
        },
        ["beefjerky"] = {
            item = "beefjerky",
            hunger = 15,
            thirst = 0,
            stress = 5,
            propname = "p_bread_06_c",
            poison = 0,
            poisonRate = 0,
            anim = "sandwich"
        },
        ["stew"] = {
            item = "stew",
            hunger = 50,
            thirst = 25,
            stress = 20,
            propname = "p_bowl04x_stew",
            poison = 0,
            poisonRate = 0,
            anim = "stew"
        },
        ["canned_apricots"] = {
            item = "canned_apricots",
            hunger = 50,
            thirst = 20,
            stress = 10,
            propname = "s_canrigapricots01x",
            poison = 0,
            poisonRate = 0,
            anim = "canned"
        },
        ["cooked_Gamey_meat"] = {
            item = "cooked_Gamey_meat",
            hunger = 15,
            thirst = 0,
            stress = 5,
            propname = "p_meat01x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_game"] = {
            item = "cooked_meat_game",
            hunger = 20,
            thirst = 0,
            stress = 5,
            propname = "p_meat02x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_small_game_meat"] = {
            item = "cooked_small_game_meat",
            hunger = 10,
            thirst = 0,
            stress = 3,
            propname = "p_meat03x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_game_bird"] = {
            item = "cooked_meat_game_bird",
            hunger = 12,
            thirst = 0,
            stress = 4,
            propname = "p_meat04x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_gristly_mutton"] = {
            item = "cooked_meat_gristly_mutton",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_meat05x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_mature_venison"] = {
            item = "cooked_meat_mature_venison",
            hunger = 22,
            thirst = 0,
            stress = 5,
            propname = "p_meat06x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_gritty_fish"] = {
            item = "cooked_meat_gritty_fish",
            hunger = 12,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_meat_herptile"] = {
            item = "cooked_meat_herptile",
            hunger = 10,
            thirst = 0,
            stress = 3,
            propname = "p_meat07x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_crustacean"] = {
            item = "cooked_meat_crustacean",
            hunger = 12,
            thirst = 0,
            stress = 4,
            propname = "p_crab01x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_exotic_bird"] = {
            item = "cooked_meat_exotic_bird",
            hunger = 16,
            thirst = 0,
            stress = 5,
            propname = "p_meat08x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_flakey_fish"] = {
            item = "cooked_meat_flakey_fish",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_meat_plump_bird"] = {
            item = "cooked_meat_plump_bird",
            hunger = 20,
            thirst = 0,
            stress = 5,
            propname = "p_meat09x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_prime_beef"] = {
            item = "cooked_meat_prime_beef",
            hunger = 30,
            thirst = 0,
            stress = 6,
            propname = "p_steak01x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_meat_stringy"] = {
            item = "cooked_meat_stringy",
            hunger = 8,
            thirst = 0,
            stress = 2,
            propname = "p_meat10x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_pork"] = {
            item = "cooked_pork",
            hunger = 22,
            thirst = 0,
            stress = 5,
            propname = "p_meat_pork01x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_gator_meat"] = {
            item = "cooked_gator_meat",
            hunger = 25,
            thirst = 0,
            stress = 6,
            propname = "p_meat_gator01x",
            poison = 0,
            poisonRate = 0,
            anim = "meat"
        },
        ["cooked_fishbluegil_ms"] = {
            item = "cooked_fishbluegil_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishbluegil_sm"] = {
            item = "cooked_fishbluegil_sm",
            hunger = 10,
            thirst = 0,
            stress = 3,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishbullheadcat_ms"] = {
            item = "cooked_fishbullheadcat_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishbullheadcat_sm"] = {
            item = "cooked_fishbullheadcat_sm",
            hunger = 10,
            thirst = 0,
            stress = 3,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishchainpickerel_ms"] = {
            item = "cooked_fishchainpickerel_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishchainpickerel_sm"] = {
            item = "cooked_fishchainpickerel_sm",
            hunger = 10,
            thirst = 0,
            stress = 3,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishchannelcatfish_lg"] = {
            item = "cooked_fishchannelcatfish_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishchannelcatfish_xl"] = {
            item = "cooked_fishchannelcatfish_xl",
            hunger = 20,
            thirst = 0,
            stress = 5,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishlakesturgeon_lg"] = {
            item = "cooked_fishlakesturgeon_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishlargemouthbass_lg"] = {
            item = "cooked_fishlargemouthbass_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishlargemouthbass_ms"] = {
            item = "cooked_fishlargemouthbass_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishlongnosegar_lg"] = {
            item = "cooked_fishlongnosegar_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishmuskie_lg"] = {
            item = "cooked_fishmuskie_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishnorthernpike_lg"] = {
            item = "cooked_fishnorthernpike_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishperch_ms"] = {
            item = "cooked_fishperch_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishperch_sm"] = {
            item = "cooked_fishperch_sm",
            hunger = 10,
            thirst = 0,
            stress = 3,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishrainbowtrout_lg"] = {
            item = "cooked_fishrainbowtrout_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishrainbowtrout_ms"] = {
            item = "cooked_fishrainbowtrout_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishredfinpickerel_ms"] = {
            item = "cooked_fishredfinpickerel_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishredfinpickerel_sm"] = {
            item = "cooked_fishredfinpickerel_sm",
            hunger = 10,
            thirst = 0,
            stress = 3,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishrockbass_ms"] = {
            item = "cooked_fishrockbass_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishrockbass_sm"] = {
            item = "cooked_fishrockbass_sm",
            hunger = 10,
            thirst = 0,
            stress = 3,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishsalmonsockeye_lg"] = {
            item = "cooked_fishsalmonsockeye_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishsalmonsockeye_ml"] = {
            item = "cooked_fishsalmonsockeye_ml",
            hunger = 16,
            thirst = 0,
            stress = 4,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishsalmonsockeye_ms"] = {
            item = "cooked_fishsalmonsockeye_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishsmallmouthbass_lg"] = {
            item = "cooked_fishsmallmouthbass_lg",
            hunger = 18,
            thirst = 0,
            stress = 5,
            propname = "p_fish02x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        },
        ["cooked_fishsmallmouthbass_ms"] = {
            item = "cooked_fishsmallmouthbass_ms",
            hunger = 14,
            thirst = 0,
            stress = 4,
            propname = "p_fish01x",
            poison = 0,
            poisonRate = 0,
            anim = "fish"
        }
    }
}

Config.Animations = {
    placingCampfire = {
        dict = "script_common@shared_scenarios@prop@campfire@unarmed@male_a@base",
        name = "base",
        flag = 35,
        duration = 10000
    }
}

Config.Commands = {
    campfire = true,
    extinguish = true
}

-- Menu configuration
Config.MenuPosition = "center" -- Options: 'top-left', 'top-right', 'bottom-left', 'bottom-right', 'center'