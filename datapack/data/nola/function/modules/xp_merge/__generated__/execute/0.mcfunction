# Datapack by 2mal3 (https://github.com/2mal3)

execute store result score .xp nola.data run data get entity @s Value
tag @s add nola.this
execute at @s as @e[type=minecraft:experience_orb,distance=..2.5,tag=!nola.this] run function nola:modules/xp_merge/__generated__/execute/2
tag @s remove nola.this
execute store result entity @s Value double 1 run scoreboard players get .xp nola.data


