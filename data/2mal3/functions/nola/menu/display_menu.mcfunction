# Description: Displays the datapack menu
# Called from tag: 2mal3:nola/menu
# Datapack by 2mal3

# Disables command fedback for a short time, so that no disturbing message is displayed
gamerule sendCommandFeedback false
schedule function 2mal3:nola/menu/send_command_feedback_true 1t


# Plays click sound
playsound minecraft:ui.button.click master @s


# Get variables
execute as @e at @s run function 2mal3:nola/ignore
execute as @e at @s run function 2mal3:nola/ignore_kill

function 2mal3:nola/get_variables


# Display menu
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s [{"text":"No Lag Datapack v2.3.0","bold":true,"color":"gold"},{"text":"\n------------------------\n","color":"gold"}]

tellraw @s [{"text":"\u263a Online players: ","color":"gold"},{"score":{"name":"$players","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"\u2666 Entitys in the world: ","color":"gold"},{"score":{"name":"$entitys","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"\u2744 Frozen entitys: ","color":"gold"},{"score":{"name":"$frozen_entitys","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"\u26a1 Unneeded entitys: ","color":"gold"},{"score":{"name":"$unneeded_entitys","objective":"nola.data"},"color":"red"}]

tellraw @s {"text":""}

tellraw @s {"text":"\u2699 Configure the datapack \u25b6","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_config/page_1"},"hoverEvent":{"action":"show_text","value":"*click*"},"color":"gold"}
tellraw @s {"text":"\u26a1 Delete all unused entitys \u25b6","color":"gold","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/manual_lag_clear"},"hoverEvent":{"action":"show_text","contents":"*click*"}}
tellraw @s {"text":"\u231a Check for updates","color":"gold","clickEvent":{"action":"open_url","value":"https://github.com/2mal3/core/wiki/No-Lag-Update-Check-v2.3.0"},"hoverEvent":{"action":"show_text","contents":"*open link*"}}
tellraw @s {"text":"\u303d Debug Datapack \u25b6","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/core/debug"},"hoverEvent":{"action":"show_text","value":"*click*"},"color":"gold"}

tellraw @s {"text":""}

tellraw @s {"text":"\u2b24 Planet Minecraft Website","color":"blue","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/no-lag-datapack/"},"hoverEvent":{"action":"show_text","contents":"*open link*"}}
tellraw @s {"text":"\u2709 GitHub Website","color":"blue","clickEvent":{"action":"open_url","value":"https://github.com/2mal3/No-Lag-Datapack"},"hoverEvent":{"action":"show_text","contents":"*open link*"}}

tellraw @s {"text":""}

tellraw @s {"text":"\u267b Uninstall the datapack \u25b6","color":"dark_red","clickEvent":{"action":"run_command","value":"/function #2mal3:nola/uninstall"},"hoverEvent":{"action":"show_text","contents":"*click*"}}