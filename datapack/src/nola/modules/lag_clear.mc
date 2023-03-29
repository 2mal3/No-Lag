import ../../../macros/log.mcm


function main {
    scoreboard players remove %lagClearTime nola.data 1

    execute if score %lagClearTime nola.data matches 1 if score $lagClearMessages nola.data matches 1 run tellraw @a[tag=!global.ignore] [{"text":"In ","color":"gray"},{"text":"1 minute","color":"white"},{"text":" all unneeded entities will be deleted","color":"gray"}]
    execute if score %lagClearTime nola.data matches 0 run {
        name clear
        log NoLag info server <Execute lag clear>
        scoreboard players operation %lagClearTime nola.data = $lagClearTime nola.config

        # Count how many unended entities got deleted
        scoreboard players set .temp0 nola.data 0
        # Finds which entities are to be deleted
        execute as @e[tag=!global.ignore,tag=!global.ignore.kill,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity,type=!#nola:modules/lag_clear/ignore,name=!"ignore"] at @s run function nola:modules/lag_clear/check_kill

        # Send message how many entities where deleted
        execute if score $lagClearMessages nola.config matches 1 run tellraw @a[tag=!global.ignore] [{"score":{"name":".temp0","objective":"nola.data","color":"gray"}},{"text":" unneeded entities were deleted","color":"gray"}]
    }
}


## Finds which entities are to be deleted
function check_kill {
    scoreboard players set .temp1 nola.data 0

    # Prevent deletion if near player
    execute if entity @p[distance=..45] run scoreboard players set .temp1 nola.data 1
    # Prevent deletion if it has a name
    execute if data entity @s CustomName run scoreboard players set .temp1 nola.data 1
    # Prevent deletion if its a tamed pet
    execute if data entity @s Owner run scoreboard players set .temp1 nola.data 1

    execute if score .temp1 nola.data matches 0 if entity @s[type=!minecraft:armor_stand,type=!minecraft:glow_item_frame,type=!minecraft:item_frame] run scoreboard players set .temp1 nola.data 2

    # Delete item frame if it has no items
    execute if score .temp1 nola.data matches 0 if entity @s[type=#nola:modules/lag_clear/item_frame,predicate=!nola:modules/lag_clear/have_item] run scoreboard players set .temp1 nola.data 2
    # Delete armor stand if it has no items
    execute if score .temp1 nola.data matches 0 if entity @s[type=minecraft:armor_stand] unless data entity @s ArmorItems[0].id unless data entity @s ArmorItems[1].id unless data entity @s ArmorItems[2].id unless data entity @s ArmorItems[3].id run scoreboard players set .temp1 nola.data 2

    # Delete entity
    execute if score .temp1 nola.data matches 2 run {
        scoreboard players add .temp0 nola.data 1
        tp @s ~ -1000 ~
        kill @s
    }
}


function death {
    log NoLag debug entity <Executed dropped items>

    tag @e[type=minecraft:item,distance=..5] add global.ignore.kill
    scoreboard players reset @s nola.deathCount
}


entities item_frame {
    minecraft:item_frame
    minecraft:glow_item_frame
}

predicate have_item {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
        "nbt": "{Item:{}}"
    }
}

entities ignore {
    minecraft:area_effect_cloud
    minecraft:allay
    minecraft:bee
    minecraft:block_display
    minecraft:chest_minecart
    minecraft:chicken
    minecraft:command_block_minecart
    minecraft:cow
    minecraft:donkey
    minecraft:elder_guardian
    minecraft:end_crystal
    minecraft:ender_dragon
    minecraft:evoker
    minecraft:furnace_minecart
    minecraft:giant
    minecraft:glow_squid
    minecraft:goat
    minecraft:hopper_minecart
    minecraft:horse
    minecraft:illusioner
    minecraft:iron_golem
    minecraft:item
    minecraft:item_display
    minecraft:interaction
    minecraft:leash_knot
    minecraft:llama
    minecraft:marker
    minecraft:mooshroom
    minecraft:ocelot
    minecraft:painting
    minecraft:panda
    minecraft:pig
    minecraft:piglin_brute
    minecraft:player
    minecraft:rabbit
    minecraft:sheep
    minecraft:shulker
    minecraft:skeleton_horse
    minecraft:snow_golem
    minecraft:text_display
    minecraft:tnt_minecart
    minecraft:trader_llama
    minecraft:trident
    minecraft:turtle
    minecraft:villager
    minecraft:vindicator
    minecraft:wandering_trader
    minecraft:warden
    minecraft:wither
    minecraft:zombie_horse
}
