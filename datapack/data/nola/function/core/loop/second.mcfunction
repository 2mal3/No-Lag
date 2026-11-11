# Datapack by 2mal3 (https://github.com/2mal3)

schedule function nola:core/loop/second 1s
execute if score $noAIAreaIgnorer nola.config matches 1 as @e[type=minecraft:armor_stand,name="ignore"] at @s run function nola:core/loop/__generated__/execute/0
execute as @e[tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity] at @s run function nola:core/loop/__generated__/execute/1
execute as @a[scores={nola.deathCount=1..}] at @s run function nola:modules/lag_clear/death


