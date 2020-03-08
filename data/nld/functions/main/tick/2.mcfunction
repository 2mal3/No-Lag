# Description: datapack tick
# From: main/tick/1
# Datapack by 2mal3

# max entitys
function nld:max_entitys

# no collision
execute as @e[type=#nld:no_collision,sort=random,limit=1,team=!nld.no_collision] run team join nld.no_collision @s


