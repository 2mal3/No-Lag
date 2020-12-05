# Description: Uninstall the datapack
# Called from function: 2mal3:nola/core/uninstall/uninstall_ask
# Datapack by 2mal3

# send remove message
tellraw @a [{"text":"No Lag Datapack v2.0.0 by 2mal3 was successfully uninstalled."}]

# remove scoreboards
scoreboard objectives remove nola.data
scoreboard objectives remove nola.config
scoreboard objectives remove nola.despawn
scoreboard objectives remove nola.xp
scoreboard objectives remove nola.debug_mode

# Activates for all entitys the ai
execute as @e[tag=nola.no_ai] run function 2mal3:nola/modules/no_ai/disable

# remove teams
team remove nola.no_collision

# remove tags
tag @e[tag=nola.ignore] remove nola.ignore
tag @e[tag=nola.ignore_kill] remove nola.ignore_kill

# reset gamerules
gamerule maxEntityCramming 24

# stop ticks
schedule clear 2mal3:nola/core/tick/second
schedule clear 2mal3:nola/core/tick/minute
schedule clear 2mal3:nola/core/tick/day


# disable datapack
datapack disable "file/No Lag-Datapack-v2.0.0"
datapack disable "file/No Lag-Datapack-v2.0.0.zip"
