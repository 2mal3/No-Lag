# Description: Ignoring entity
# Called from function: 2mal3:nola/core/tick/second
# Datapack by 2mal3

# Remove the ignore tag
tag @s remove nola.ignore

# Gives all entities that should be ignored the tag
execute if entity @s[type=#2mal3:nola/ignore] run tag @s add nola.ignore
execute if entity @s[name=ignore] run tag @s add nola.ignore
execute if score $nola.area_ignorer nola.config matches 1 if entity @e[type=minecraft:armor_stand,distance=..64,name=ignore] run tag @s add nola.ignore