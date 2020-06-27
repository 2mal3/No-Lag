# Description: datapack tick
# From: #tick
# Datapack by 2mal3


# remove tnt
scoreboard players set nld.tnt nld.data 0
execute as @e[type=tnt] run scoreboard players add nld.tnt nld.data 1

execute if score nld.tnt nld.data > nld.max_tnt nld.config run function nld:max_tnt


# xp combine
execute as @e[type=minecraft:experience_orb] store result score @s nld.xp run data get entity @s Value
execute as @e[type=minecraft:experience_orb,sort=random,limit=1] at @s if entity @e[type=minecraft:experience_orb,distance=..2] run function nld:xp_combine
