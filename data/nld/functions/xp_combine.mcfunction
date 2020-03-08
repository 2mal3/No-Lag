# Description: Combinates the xp
# From: main/tick
# Datapack by 2mal3

tag @e[type=minecraft:experience_orb,sort=nearest,limit=1,distance=0.01..2] add nld.combine
scoreboard players operation @s nld.xp += @e[tag=nld.combine] nld.xp
kill @e[tag=nld.combine]

execute store result entity @s Value double 1 run scoreboard players get @s nld.xp
