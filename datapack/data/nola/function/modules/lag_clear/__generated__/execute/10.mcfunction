# Datapack by 2mal3 (https://github.com/2mal3)

execute if entity @s[type=#nola:modules/lag_clear/item_frame,predicate=!nola:modules/lag_clear/have_item] run scoreboard players set .temp1 nola.data 1
execute if entity @s[type=minecraft:armor_stand] unless data entity @s ArmorItems[0].id unless data entity @s ArmorItems[1].id unless data entity @s ArmorItems[2].id unless data entity @s ArmorItems[3].id run scoreboard players set .temp1 nola.data 1


