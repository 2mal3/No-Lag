# Description: Enables / disables all entitys in a radius of 35 blocks
# AS: server, AT: server
# Called from function: 2mal3:nola/modules/no_ai/main
# Datapack by 2mal3

execute as @e[tag=!nola.no_ai,tag=!nola.ignore,type=!minecraft:villager] at @s unless entity @p[distance=..35,gamemode=!spectator] if data entity @s Attributes run function 2mal3:nola/modules/no_ai/enable
execute as @e[tag=nola.no_ai] at @s if entity @p[distance=..35,gamemode=!spectator] run function 2mal3:nola/modules/no_ai/disable
