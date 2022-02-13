import ../../macros/log.mcm


## Loops
dir loop {
  clock 1s {
    name second

    # Ignore entitys near named armor sands
    execute if score $noAIAreaIgnorer nola.config matches 1 as @e[type=minecraft:armor_stand,name="ignore"] at @s run {
      tag @e[distance=..64] add nola.noAI.ignore
      particle minecraft:happy_villager ~ ~ ~ 0.2 1 0.2 1 5
    }

    # Main entity loops
    execute as @e[tag=!global.ignore] run {
      # Xp merging
      execute if score $xpMerge nola.config matches 1 if entity @s[type=minecraft:experience_orb] run function nola:modules/xp_merge/main
      # Anti tnt spam
      execute if score $antiTNTSpam nola.config matches 1 if entity @s[type=minecraft:tnt,tag=!nola.processed] at @s run function nola:modules/anti_tnt_spam/main
      # No ai
      execute if score $noAI nola.config matches 1 if entity @s[type=!minecraft:villager,type=!#nola:modules/no_ai/ignore,team=!thisTeamDoesNotExist,name=!"ignore",tag=!nola.noAI.ignore] at @s run function nola:modules/no_ai/distance
      tag @s remove nola.noAI.ignore
    }
  }

  clock 60s {
    name minute

    execute as @e[tag=!global.ignore] run {
      # Faster item despawn
      execute if score $itemDespawn nola.config matches 1 if entity @s[type=minecraft:item] run function nola:modules/item_despawn/main
      # Farm animales no collision
      execute if score $noCollision nola.config matches 1 if entity @s[type=#nola:modules/no_collision/farm_animales,tag=!nola.processed] run function nola:modules/no_collision/main
    }
    # Lag clear
    execute if score $lagClear nola.config matches 1 run function nola:modules/lag_clear/main
  }
}


## Loading, installing and updating
function load {
  log NoLag info server <Datapack reloaded>

  scoreboard objectives add nola.data dummy

  scoreboard players set %installed nola.data 0
  # Initializes the datapack at the first startup or new version
  execute unless score %installed nola.data matches 1 run {
    log NoLag info server <Datapack installed>
    scoreboard players set %installed nola.data 1

    scoreboard objectives add nola.data dummy
    scoreboard objectives add nola.config dummy
    scoreboard objectives add 2mal3.debugMode dummy
    scoreboard objectives add nola.itemDespawnTime dummy
    # Teams
    team add nola.noCollision
    team modify nola.noCollision collisionRule pushOtherTeams
    # Set the version in format: xx.xx.xx
    scoreboard players set $version nola.data 030000

    # Set config
    gamerule maxEntityCramming 4
    scoreboard players set $antiTNTSpam nola.config 0
    scoreboard players set $itemDespawn nola.config 1
    scoreboard players set $itemDespawnTime nola.config 3
    scoreboard players set $lagClear nola.config 1
    scoreboard players set $lagClearTime nola.config 30
    scoreboard players set %lagClearTime nola.data 30
    scoreboard players set $noAI nola.config 1
    scoreboard players set $noAIDistance nola.config 42
    scoreboard players set $noAIAreaIgnorer nola.config 1
    scoreboard players set $noCollision nola.config 1
    scoreboard players set $xpMerge nola.config 1

    schedule 4s replace {
      tellraw @a [{"text":"No Lag Datapack v3.0.0 by 2mal3 was installed!","color":"blue"}]
    }
  }
  execute if score %installed nola.data matches 1 unless score $version nola.data matches 030000 run {
    log NoLag info server <Updated datapack>
    scoreboard players set $version nola.data 030000
  }
}


## First join
function first_join {
  ## Warns the player if he uses a not supportet server software or minecraft version
  execute store result score .temp0 nola.data run data get entity @s DataVersion
  execute unless score .temp0 nola.data matches 2860..2865 run tellraw @s [{"text":"[","color":"gray"},{"text":"nola","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text": "/","color": "gray"},{"text": "Server","color": "gold"},{"text":"]: ","color":"gray"},{"text":"This Minecraft version is not supported by the datapack. Please use the 1.18.x to prevent errors.","color":"gold"}]
}

advancement first_join {
  "criteria": {
      "requirement": {
          "trigger": "minecraft:tick"
      }
  },
  "rewards": {
      "function": "nola:core/first_join"
  }
}


## Datapack advancement
advancement nola {
  "display": {
    "title": "No Lag v3.0.0",
    "description": "Improves the performance of the world with over 6 different and adjustable methods.",
    "icon": {
      "item": "minecraft:clock"
    },
    "announce_to_chat": false,
    "show_toast": false
  },
  "parent": "global:2mal3",
  "criteria": {
    "trigger": {
      "trigger": "minecraft:tick"
    }
  }
}


## Datapack uninstalling
function uninstall {
  log NoLag info server <Datapack uninstalled>

  # Deletes the scoreboards
  scoreboard objectives remove nola.data
  scoreboard objectives remove nola.config
  scoreboard objectives remove nola.itemDespawnTime

  # Reset gamerules
  gamerule maxEntityCramming 24

  # Sends an uninstallation message to all players
  tellraw @a [{"text":"2mal3's Tweaks v3.0.0 by 2mal3 was successfully uninstalled."}]

  # Disables the datapack
  datapack disable "file/No-Lag-Datapack"
  datapack disable "file/No-Lag-Datapack-v3.0.0"
  datapack disable "file/No-Lag-Datapack-v3.0.0.zip"
}
