# Description: Ignoring entity
# Called from function: 2mal3:nola/core/tick/minute
# Datapack by 2mal3

# remove tags
tag @s remove nola.ignore_kill


# add tags
execute unless entity @s[name=!] run tag @s add nola.ignore_kill

execute if entity @s[type=#2mal3:nola/farm_animal] run tag @s add nola.ignore_kill
execute if entity @s[type=#2mal3:nola/ignore_kill] run tag @s add nola.ignore_kill
execute if entity @s[type=#2mal3:nola/tame] if data entity @s Owner run tag @s add nola.ignore_kill

execute if entity @s[tag=nola.ignore] run tag @s add nola.ignore_kill
execute if entity @s[tag=global.ignore.kill] run tag @s add nola.ignore_kill

execute if predicate 2mal3:nola/iron_golem_player_created run tag @s add nola.ignore_kill

execute if entity @p[distance=..45] run tag @s add nola.ignore_kill