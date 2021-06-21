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
# Placed somewhere in the world loaded command blocks that unfreeze frozen entities even when the datapack was removed
forceload add 4304753 9403631
setblock 4304753 1 9403631 repeating_command_block{auto: 1b, Command: "/execute as @e[tag=nola.no_ai] run data modify entity @s NoAI set value 0"}
setblock 4304753 2 9403631 repeating_command_block{auto: 1b, Command: "/execute as @e[tag=nola.no_ai] run data modify entity @s Invulnerable set value 0"}
setblock 4304753 3 9403631 repeating_command_block{auto: 1b, Command: "/execute as @e[tag=nola.no_ai] run tag @s remove nola.no_ai"}
gamerule commandBlockOutput false

# Stops the datapack loops
schedule clear 2mal3:nola/core/tick/second
schedule clear 2mal3:nola/core/tick/minute
schedule clear 2mal3:nola/core/tick/day


# Disable the datapack
datapack disable "file/No-Lag-Datapack-v2.4.3"
datapack disable "file/No-Lag-Datapack-v2.4.3.zip"
