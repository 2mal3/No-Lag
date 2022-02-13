import ../../../macros/log.mcm


function main {
  scoreboard players remove %lagClearTime nola.data 1

  execute if score %lagClearTime nola.data matches 1 run tellraw @a[tag=!global.ignore] [{"text":"In ","color":"gray"},{"text":"1 minute","color":"white"},{"text":" all unneeded entities will be deleted.","color":"gray"}]
  execute if score %lagClearTime nola.data matches 0 run {
    name clear
    log NoLag info server <Execute lag clear>
    scoreboard players operation %lagClearTime nola.data = $lagClearTime nola.config

    # Count how many unneded entities got deleted
    scoreboard players set .temp0 nola.data 0
    execute as @e[tag=!global.ignore,tag=!global.ignore.kill,type=!#nola:modules/lag_clear/ignore,name=!"ignore"] at @s run {
      scoreboard players set @s nola.data 0

      # Finds which entities are to be deleted
      execute if entity @p[distance=..45] run scoreboard players set @s nola.data 1
      execute if data entity @s CustomName run scoreboard players set @s nola.data 1
      scoreboard players set @s[scores={nola.data=0},type=!minecraft:armor_stand,type=!minecraft:glow_item_frame,type=!minecraft:item_frame] nola.data 2
      scoreboard players set @s[scores={nola.data=0},type=#nola:modules/lag_clear/item_frame,predicate=!nola:modules/lag_clear/have_item] nola.data 2
      execute if entity @s[scores={nola.data=0},type=minecraft:armor_stand] unless data entity @s ArmorItems.[0].id unless data entity @s ArmorItems.[1].id unless data entity @s ArmorItems.[2].id unless data entity @s ArmorItems.[3].id run scoreboard players set @s nola.data 2

      # Delete entities
      execute if score @s nola.data matches 2 run {
        scoreboard players add .temp0 nola.data 1
        tp @s ~ -1000 ~
        kill @s
      }

      scoreboard players reset @s nola.data
    }

    tellraw @a[tag=!global.ignore] [{"score":{"name":".temp0","objective":"nola.data","color":"gray"}},{"text":" unneeded entities were deleted.","color":"gray"}]
  }
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
  minecraft:axolotl
  minecraft:bee
  minecraft:chicken
  minecraft:command_block_minecart
  minecraft:cow
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
  minecraft:iron_golem
  minecraft:item
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
  minecraft:tnt_minecart
  minecraft:trident
  minecraft:turtle
  minecraft:villager
  minecraft:wither
  minecraft:wolf
  minecraft:zombie_horse
}
