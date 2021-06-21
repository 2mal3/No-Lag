# Description: Enables / disables all entitys in a radius of 42 blocks
# AS: server, AT: server
# Called from function: 2mal3:nola/modules/no_ai/main
# Datapack by 2mal3

execute as @e[tag=!nola.no_ai,tag=!nola.ignore,type=!minecraft:villager,team=!this_team_does_not_exist] at @s unless entity @p[distance=..42,gamemode=!spectator] run function 2mal3:nola/modules/no_ai/enable
execute as @e[tag=nola.no_ai] at @s if entity @p[distance=..42,gamemode=!spectator] run function 2mal3:nola/modules/no_ai/disable
