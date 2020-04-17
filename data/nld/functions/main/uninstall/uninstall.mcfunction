# Description: Deleting the Datapack
# From: main/uninstall/unistall_ask
# Datapack by 2mal3

tellraw @a ["",{"text":"[Server] The No Lag Datapack v."},{"score":{"name":"V1","objective":"nld.data"}},{"text":"."},{"score":{"name":"V2","objective":"nld.data"}},{"text":"."},{"score":{"name":"V3","objective":"nld.data"}},{"text":" by 2mal3 was successfully uninstalled."}]

scoreboard objectives remove nld.data
scoreboard objectives remove nld.xp

team remove nld.no_collision

gamerule maxEntityCramming 24

execute as @e[tag=nld.NoAI] run data merge entity @s {NoAI:0b}
