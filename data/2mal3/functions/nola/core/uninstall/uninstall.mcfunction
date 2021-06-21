# Description: Uninstall the datapack
# AS: player, AT: player
# Called from function: 2mal3:nola/core/uninstall/uninstall_ask
# Datapack by 2mal3

# Send remove message
tellraw @a [{"text":"No Lag Datapack v2.4.3 by 2mal3 was successfully uninstalled."}]

# Remove all scoreboards
scoreboard objectives remove nola.data
scoreboard objectives remove nola.config
scoreboard objectives remove nola.despawn
scoreboard objectives remove nola.xp
scoreboard objectives remove nola.debug_mode
# Remove all teams
team remove nola.no_collision
# Remove all datapack tags from all entitys
tag @e[tag=nola.ignore] remove nola.ignore
tag @e[tag=nola.ignore_kill] remove nola.ignore_kill
tag @e[tag=nola.ignore_kill.farm] remove nola.ignore_kill.farm
tag @e[tag=nola.ignore_kill.near] remove nola.ignore_kill.near
# Resets the gamerule
gamerule maxEntityCramming 24
# Disable the tps test if active
execute if score $tps_test nola.config matches 1 run function 2mal3:nola/menu/buttons/tps_test/false

# Unfreezes all loaded and frozen entitys
execute as @e[tag=nola.no_ai] run function 2mal3:nola/modules/no_ai/disable
# Test if command blocks are enabled on the server and notify the player if not

# Set at the worldspawn in the undergrund command blocks that unfreeze frozen entities even when the datapack is removed
gamerule commandBlockOutput false
execute at 6605427f-f242-4b1a-a37a-c2b86a3d8ac5 run setblock ~ 1 ~ repeating_command_block{auto: 1b, Command: "/execute as @e[tag=nola.no_ai] run data modify entity @s NoAI set value 0"}
execute at 6605427f-f242-4b1a-a37a-c2b86a3d8ac5 run setblock ~ 2 ~ repeating_command_block{auto: 1b, Command: "/execute as @e[tag=nola.no_ai] run data modify entity @s Invulnerable set value 0"}
execute at 6605427f-f242-4b1a-a37a-c2b86a3d8ac5 run setblock ~ 3 ~ repeating_command_block{auto: 1b, Command: "/execute as @e[tag=nola.no_ai] run tag @s remove nola.no_ai"}
kill 6605427f-f242-4b1a-a37a-c2b86a3d8ac5

# Stops the datapack loops
schedule clear 2mal3:nola/core/tick/second
schedule clear 2mal3:nola/core/tick/minute
schedule clear 2mal3:nola/core/tick/day


# Disable the datapack
datapack disable "file/No-Lag-Datapack-v2.4.3"
datapack disable "file/No-Lag-Datapack-v2.4.3.zip"
