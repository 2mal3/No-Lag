from nola:log import log


## Load
function ~/load:
    scoreboard objectives add nola.data dummy

    log "info" "server" "Loaded!"

    execute unless score %installed nola.data matches 1 run function ~/install
    execute if score %installed nola.data matches 1 unless score $version nola.data matches ctx.meta.version run function ~/update

    # Clocks
    schedule function nola:clock/minute 60s replace


## Install
function ~/load/install:
    scoreboard players set %installed nola.data 1

    # Add scoreboards
    scoreboard objectives add 2mal3.debug_mode dummy
    scoreboard objectives add nola.data dummy
    scoreboard objectives add nola.config dummy
    scoreboard objectives add nola.item_despawn_time dummy
    # Set the version in format: xx.xx.xx
    scoreboard players set $version nola.data ctx.meta.version

    # Set start config
    scoreboard players add $item_despawn.enabled nola.config 1
    scoreboard players set $item_despawn.time nola.config 3

    # Sent installation message after 4 seconds
    schedule function ~/send_message 4s replace:
      tellraw @a:
          text: f"Installed {ctx.project_name} {ctx.project_version} from {ctx.project_author}!"
          color: "green"


## First Join
function ~/first_join:
    execute store result score .temp_0 nola.data run data get entity @s DataVersion
    execute unless score .temp_0 nola.data matches 3463..3465:
        tellraw @s [
            {"text": "[", "color": "gray"},
            {"text": f"{ctx.project_name}", "color": "red", "bold": true},
            {"text": "]: ", "color": "gray"},
            {
                "text": "You are using the incorrect Minecraft version. Please check the website.",
                "color": "red",
                "bold": true
            }
        ]

advancement ~/first_join {
    "criteria": {
        "requirement": {
            "trigger": "minecraft:tick"
        }
    },
    "rewards": {
        "function": "nola:core/first_join"
    }
}


## Uninstall
function ~/uninstall:
    scoreboard objectives remove nola.data
    scoreboard objectives remove nola.config

    tellraw @a:
        text: f"Uninstalled {ctx.project_name} {ctx.project_version} from {ctx.project_author}!"
        color: "green"

    datapack disable "file/No-Lag"
    datapack disable "file/No-Lag.zip"
