# Description: Deleting the datapack
# Called from: main/uninstall/unistall_ask
# Datapack by 2mal3

# send uninstall message
tellraw @a ["",{"translate":"[Server] No Lag Datapack v."},{"score":{"name":"V1","objective":"nld.data"}},{"text":"."},{"score":{"name":"V2","objective":"nld.data"}},{"text":"."},{"score":{"name":"V3","objective":"nld.data"}},{"translate":" by 2mal3 was successfully uninstalled."}]

# remove scoreboards
scoreboard objectives remove nld.data
scoreboard objectives remove nld.xp
scoreboard objectives remove nld.age
scoreboard objectives remove nld.config
scoreboard objectives remove nld.math

# remove teams
team remove nld.no_collision

# remove gamerules
gamerule maxEntityCramming 24

# other
execute as @e[tag=nld.NoAI] run data merge entity @s {NoAI:0b}
schedule clear nld:clear_team
schedule clear nld:main/tick/second

# disable Datapack
datapack disable "file/No-Lag-Datapack"
datapack disable "file/No-Lag-Datapack.zip"
