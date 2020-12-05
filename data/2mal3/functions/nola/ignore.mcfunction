# Description: Ignoring entity
# Called from function: 2mal3:nola/core/tick/second
# Datapack by 2mal3

# remove tags
tag @s remove nola.ignore


# add tags
execute if entity @s[type=#2mal3:nola/ignore] run tag @s add nola.ignore

execute if entity @s[name=ignore] run tag @s add nola.ignore