import ../../macros/log.mcm


## Loading, installing and updating
function load {
  log nola info server <Datapack reloaded>

  scoreboard objectives add nola.data dummy

  # scoreboard players set %installed nola.data 0
  # Initializes the datapack at the first startup or new version
  execute unless score %installed nola.data matches 1 run {
    log nola info server <Datapack installed>
    scoreboard players set %installed nola.data 1

    scoreboard objectives add nola.data dummy
    scoreboard objectives add 2mal3.debugMode dummy
    # Set the version in format: xx.xx.xx
    scoreboard players set $version nola.data 030000

    schedule 4s replace {
      tellraw @a [{"text":"No Lag Datapack v3.0.0 by 2mal3 was installed!","color":"blue"}]
    }
  }
  execute if score %installed nola.data matches 1 unless score $version nola.data matches 010300 run {
    log nola info server <Updated datapack>
    scoreboard players set $version nola.data 030000
  }
}


## First join
function first_join {
  ## Warns the player if he uses a not supportet server software or minecraft version
  scoreboard players set .temp0 nola.data 0
  scoreboard players set .temp1 nola.data 0
  execute store result score .temp0 nola.data run data get entity @s DataVersion
  execute store success score .temp1 nola.data run data get entity @r "Bukkit.updateLevel"
  execute store success score .temp1 nola.data run data get entity @r "Spigot.ticksLived"
  execute store success score .temp1 nola.data run data get entity @r "Paper.SpawnReason"

  execute unless score .temp0 nola.data matches 2860.. run tellraw @s [{"text":"[","color":"gray"},{"text":"nola","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text": "/","color": "gray"},{"text": "Server","color": "gold"},{"text":"]: ","color":"gray"},{"text":"This Minecraft version is not supported by the datapack. Please use a version the Minecraft version 1.18.x.","color":"gold"}]
  execute if score .temp1 nola.data matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"nola","color":"gold"},{"text":"/","color":"gray"},{"text":"WARN","color":"gold"},{"text": "/","color": "gray"},{"text": "Server","color": "gold"},{"text":"]: ","color":"gray"},{"text":"This server software is not supported by the datapack, so errors may occur. Please use another server software for better stability.","color":"gold"}]
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
  log nola info server <Datapack uninstalled>

  # Deletes the scoreboards
  scoreboard objectives remove nola.data

  # Sends an uninstallation message to all players
  tellraw @a [{"text":"2mal3's Tweaks v3.0.0 by 2mal3 was successfully uninstalled."}]

  # Disables the datapack
  datapack disable "file/No-Lag-Datapack"
  datapack disable "file/No-Lag-Datapack-v3.0.0"
  datapack disable "file/No-Lag-Datapack-v3.0.0.zip"
}
