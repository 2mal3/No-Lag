# Description: Commands for information
# From: main/tick/1
# Datapack by 2mal3

tellraw @s {"text":"No Lag Datapack v.1.4 by 2mal3","color":"gold","clickEvent":{"action":"run_command","value":"/trigger nld.info"}}
scoreboard players enable @s nld.info

schedule function nld:main/info/remove 1t
