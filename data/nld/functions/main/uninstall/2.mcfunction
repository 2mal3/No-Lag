# Description: Deleting the Datapack
# From: main/uninstall/unistall.1
# Datapack by 2mal3

scoreboard objectives remove nld.data
scoreboard objectives remove nld.xp

team remove nld.no_collision

gamerule maxEntityCramming 24

execute as @e[tag=nld.NoAI] run data merge entity @s {NoAI:0b}


say The No Lag Datapack v.1.5 by 2mal3 has been successfully uninstalled!
