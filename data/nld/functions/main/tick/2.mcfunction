# Description: slow datapack tick
# From: main/tick/1
# Datapack by 2mal3

# max entitys
function nld:max_entitys

# no collision
execute as @e[type=#nld:no_collision,sort=random,limit=1,team=!nld.no_collision] run team join nld.no_collision @s

# item despawn
execute as @e[type=minecraft:item] store result score @s nld.age run data get entity @s Age

# config data
function nld:config

# start commends from config
execute if score nld.start nld.data matches 1 run scoreboard players set nld.start nld.data 0


# tick
schedule function nld:main/tick/2 1s
