# Description: Uninstall the datapack
# Called from function: 2mal3:nola/core/uninstall/uninstall_ask
# Datapack by 2mal3

# Send remove message
tellraw @a [{"text":"No Lag Datapack v2.2.1 by 2mal3 was successfully uninstalled."}]

# Remove all scoreboards
scoreboard objectives remove nola.data
scoreboard objectives remove nola.config
scoreboard objectives remove nola.despawn
scoreboard objectives remove nola.xp
scoreboard objectives remove nola.debug_mode

# Activates for all entitys the ai
execute as @e[tag=nola.no_ai] run function 2mal3:nola/modules/no_ai/disable

# Remove all teams
team remove nola.no_collision

# Remove all tags from all entitys
tag @e[tag=nola.ignore] remove nola.ignore
tag @e[tag=nola.ignore_kill] remove nola.ignore_kill
tag @e[tag=nola.ignore_kill.farm] remove nola.ignore_kill.farm
tag @e[tag=nola.ignore_kill.near] remove nola.ignore_kill.near

# Resets the gamerules
gamerule maxEntityCramming 24

# Stops the datapack loops
schedule clear 2mal3:nola/core/tick/second
schedule clear 2mal3:nola/core/tick/minute
schedule clear 2mal3:nola/core/tick/day


# Disable the datapack
datapack disable "file/No-Lag-Datapack-v2.2.1"
datapack disable "file/No-Lag-Datapack-v2.2.1.zip"
