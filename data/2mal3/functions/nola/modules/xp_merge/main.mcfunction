# Description: Merges xp
# AS: server, AT: server
# Called from function: 2mal3:nola/core/tick/second
# Datapack by 2mal3

execute as @e[type=minecraft:experience_orb] at @s if entity @e[type=minecraft:experience_orb,distance=0.001..2] store result score @s nola.xp run data get entity @s Value
tag @e[type=minecraft:experience_orb,tag=nola.processed] remove nola.processed

execute as @e[type=minecraft:experience_orb,tag=!global.ignore] at @s if entity @e[type=minecraft:experience_orb,distance=0.001..2] run function 2mal3:nola/modules/xp_merge/test
