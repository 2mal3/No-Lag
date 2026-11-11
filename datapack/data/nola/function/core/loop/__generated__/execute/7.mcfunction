# Datapack by 2mal3 (https://github.com/2mal3)

execute if score $itemDespawn nola.config matches 1 if entity @s[type=minecraft:item] run function nola:modules/item_despawn/main
execute if score $noCollision nola.config matches 1 if entity @s[type=#nola:modules/no_collision/farm_animals,tag=!nola.processed] run function nola:modules/no_collision/enable
execute if score $noCollision nola.config matches 0 if entity @s[type=#nola:modules/no_collision/farm_animals,tag=nola.processed] run function nola:modules/no_collision/disable


