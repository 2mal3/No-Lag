# Datapack by 2mal3 (https://github.com/2mal3)

tag @s add nola.processed
fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:structure_void replace minecraft:tnt
execute store result score .temp0 nola.data run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:tnt replace minecraft:structure_void
execute if score .temp0 nola.data matches 5.. run function nola:modules/anti_tnt_spam/__generated__/execute/1


