
function ~/main:
    execute if entity @s[tag=!nola.dead]:
        execute store result score .xp nola.data run data get entity @s Value

        execute at @s as @e[type=minecraft:experience_orb,distance=0.001..2.5]:
            execute store result score .temp_0 nola.data run data get entity @s Value
            scoreboard players operation .xp nola.data += .temp_0 nola.data
            tag @s add nola.dead
            kill @s

        execute store result entity @s Value double 1 run scoreboard players get .xp nola.data
