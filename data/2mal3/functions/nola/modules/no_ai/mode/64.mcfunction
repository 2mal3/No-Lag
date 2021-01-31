# Description: Enables / disables all entitys in a radius of 64 blocks
# Called from function: 2mal3:nola/modules/no_ai/main
# Datapack by 2mal3

execute as @e[type=!#2mal3:nola/ignore,tag=!nola.no_ai,tag=!nola.ignore] if data entity @s Attributes at @s unless entity @p[distance=..64,gamemode=!spectator] run function 2mal3:nola/modules/no_ai/enable
execute as @e[type=!#2mal3:nola/ignore,tag=nola.no_ai,tag=!nola.ignore] at @s if entity @p[distance=..64,gamemode=!spectator] run function 2mal3:nola/modules/no_ai/disable