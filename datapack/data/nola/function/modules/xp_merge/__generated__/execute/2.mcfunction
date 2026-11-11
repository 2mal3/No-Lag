# Datapack by 2mal3 (https://github.com/2mal3)

execute store result score .temp0 nola.data run data get entity @s Value
scoreboard players operation .xp nola.data += .temp0 nola.data
tag @s add nola.dead
kill @s


