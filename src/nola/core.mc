import ../../macros/log.mcm


## Loops
dir loop {
  clock 1s {
    name second

    # Ignore entities near named armor sands
    execute if score $noAIAreaIgnorer nola.config matches 1 as @e[type=minecraft:armor_stand,name="ignore"] at @s run {
      tag @e[distance=..64] add nola.noAI.ignore
      particle minecraft:happy_villager ~ ~ ~ 0.2 1 0.2 1 5
    }

    # Main entity loops
    execute as @e[tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity] at @s run {
      # Xp merging
      execute if score $xpMerge nola.config matches 1 if entity @s[type=minecraft:experience_orb] run function nola:modules/xp_merge/main
      # Anti tnt spam
      execute if score $antiTNTSpam nola.config matches 1 if entity @s[type=minecraft:tnt,tag=!nola.processed] run function nola:modules/anti_tnt_spam/main
      # No ai
      execute if score $noAI nola.config matches 1 if entity @s[type=!minecraft:villager,type=!#nola:modules/no_ai/ignore,team=!thisTeamDoesNotExist,name=!"ignore"] run function nola:modules/no_ai/distance
      execute if score $noAI nola.config matches 0 if entity @s[tag=nola.noAI] run function nola:modules/no_ai/disable
      tag @s remove nola.noAI.ignore
    }
  }

  clock 60s {
    name minute

    execute as @e[tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity] run {
      # Faster item despawn
      execute if score $itemDespawn nola.config matches 1 if entity @s[type=minecraft:item] run function nola:modules/item_despawn/main
      # Farm animals no collision
      execute if score $noCollision nola.config matches 1 if entity @s[type=#nola:modules/no_collision/farm_animals,tag=!nola.processed] run function nola:modules/no_collision/main
    }
    # Lag clear
    execute if score $lagClear nola.config matches 1 run function nola:modules/lag_clear/main
  }
}


## Loading, installing and updating
function load {
  log NoLag info server <Datapack reloaded>

  scoreboard objectives add nola.data dummy

  # scoreboard players set %installed nola.data 0
  # Initializes the datapack at the first startup
  execute unless score %installed nola.data matches 1 run {
    name install
    log NoLag info server <Datapack installed>
    scoreboard players set %installed nola.data 1

    # Scoreboards
    scoreboard objectives add nola.data dummy
    scoreboard objectives add nola.config dummy
    scoreboard objectives add 2mal3.debugMode dummy
    scoreboard objectives add nola.itemDespawnTime dummy
    # Teams
    team add nola.noCollision
    team modify nola.noCollision collisionRule pushOwnTeam
    # Set the version in format: xx.xx.xx
    scoreboard players set $version nola.data 030100
    # Set variables
    scoreboard players set $300 nola.data 300

    # Set a forceload, helpful for uninstalling
    forceload add -30000000 1600
    schedule 4s replace {
      fill -30000000 60 1601 -30000000 58 1601 minecraft:stone
    }

    # Set config
    gamerule maxEntityCramming 4
    scoreboard players set $antiTNTSpam nola.config 0
    scoreboard players set $itemDespawn nola.config 1
    scoreboard players set $itemDespawnTime nola.config 3
    scoreboard players set $lagClear nola.config 1
    scoreboard players set $lagClearTime nola.config 30
    scoreboard players set %lagClearTime nola.data 30
    scoreboard players set $lagClearMessages nola.config 1
    scoreboard players set $noAI nola.config 1
    scoreboard players set $noAIDistance nola.config 42
    scoreboard players set $noAIAreaIgnorer nola.config 1
    scoreboard players set $noCollision nola.config 1
    scoreboard players set $xpMerge nola.config 1
    scoreboard players set $tpsTest nola.config 0

    schedule 4s replace {
      tellraw @a [{"text":"No Lag Datapack v3.1.0 by 2mal3 was installed!","color":"green"}]
    }
  }
  # Updates the datapack
  execute if score %installed nola.data matches 1 unless score $version nola.data matches 030100 run {
    # v3.0.1
    execute if score $version nola.data matches 030000 run {
      log NoLag info server <Updated from v3.0.0 to v3.0.1>
      scoreboard players set $version nola.data 030001
    }

    # v3.0.2
    execute if score $version nola.data matches 030001 run {
      log NoLag info server <Updated from v3.0.1 to v3.0.2>
      scoreboard players set $version nola.data 030002

      scoreboard players reset $lagClearMessages nola.data
      scoreboard players set $lagClearMessages nola.config 1
    }

    # v3.0.3
    execute if score $version nola.data matches 030002 run {
      log NoLag info server <Updated from v3.0.2 to v3.0.3>
      scoreboard players set $version nola.data 030003
    }

    # v3.0.4
    execute if score $version nola.data matches 030003 run {
      log NoLag info server <Updated from v3.0.3 to v3.0.4>
      scoreboard players set $version nola.data 030004
    }

    # v3.1.0
    execute if score $version nola.data matches 030100 run {
      log NoLag info server <Updated from v3.0.4 to v3.1.0>
      scoreboard players set $version nola.data 030100
    }
  }
}


## First join
function first_join {
  # Warns the player if he uses a not supported server software or minecraft version
  execute store result score .temp0 nola.data run data get entity @s DataVersion
  execute unless score .temp0 nola.data matches 3105.. run tellraw @s [{"text":"[","color":"gray"},{"text":"NoLag","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text": "/","color": "gray"},{"text": "Server","color": "gold"},{"text":"]: ","color":"gray"},{"text":"This Minecraft version is not supported by the datapack. Please use the 1.19.x to prevent errors.","color":"gold"}]
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
    "title": "No Lag v3.1.0",
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
dir uninstall {
  # Tests if command blocks are enabled to avoid errors
  function check {
    tellraw @a {"text":"Uninstalling datapack ...","color": "green"}

    execute in minecraft:overworld run sequence {
      setblock -30000000 58 1601 minecraft:repeating_command_block{auto: 1b, Command: "/scoreboard players set %commandBlock nola.data 1"}
      delay 2t
      execute if score %commandBlock nola.data matches 0 run log NoLag error server <The uninstallation of the datapack was aborted because command blocks are disabled. Please enable command blocks in the server properties and try again.>
      execute if score %commandBlock nola.data matches 1 run function nola:core/uninstall/uninstall
    }
  }

  # Uninstalls the datapack
  function uninstall {
    # Deletes the scoreboards
    scoreboard objectives remove nola.data
    scoreboard objectives remove nola.config
    scoreboard objectives remove nola.itemDespawnTime
    # Deletes team
    team remove nola.noCollision
    # Reset gamerules
    gamerule maxEntityCramming 24

    # Places command blocks that can unfreeze entities even after the datapack is uninstalled
    gamerule commandBlockOutput false
    setblock -30000000 60 1601 minecraft:repeating_command_block{auto: 1b, Command:"/execute as @e[tag=nola.noAI] run data merge entity @s {NoAI: 0b, Invulnerable: 0b}"}
    setblock -30000000 59 1601 minecraft:repeating_command_block{auto: 1b, Command:"/tag @e[tag=nola.noAI] remove nola.noAI"}

    # Sends an uninstallation message to all players
    tellraw @a {"text":"No Lag Datapack v3.1.0 by 2mal3 was successfully uninstalled.","color":"green"}

    # Disables the datapack
    datapack disable "file/No-Lag-Datapack"
    datapack disable "file/No-Lag-Datapack.zip"
  }
}
