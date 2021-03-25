# Description: Ignoring entity
# Called from function: 2mal3:nola/core/tick/minute
# Datapack by 2mal3

# Remove the ignore kill tag
tag @s remove nola.ignore_kill
tag @s remove nola.ignore_kill.near
tag @s remove nola.ignore_kill.farm


# Gives all entitys that should be ignored to kill the ignore kill tag
execute if data entity @s CustomName run tag @s add nola.ignore_kill

execute if entity @s[type=#2mal3:nola/breedable] run tag @s add nola.ignore_kill.farm
execute if entity @s[type=#2mal3:nola/ignore_kill] run tag @s add nola.ignore_kill
execute if entity @s[type=#2mal3:nola/tameable] if data entity @s Owner run tag @s add nola.ignore_kill

execute if entity @s[tag=nola.ignore] run tag @s add nola.ignore_kill
execute if entity @s[tag=global.ignore.kill] run tag @s add nola.ignore_kill

execute if predicate 2mal3:nola/iron_golem_player_created run tag @s add nola.ignore_kill

execute if entity @p[distance=..45] run tag @s add nola.ignore_kill.near