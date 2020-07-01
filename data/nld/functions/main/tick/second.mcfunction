# Description: slow datapack tick
# Called from: main/tick/second, main/reload
# Datapack by 2mal3

# max entitys
function nld:max_entitys

# no collision
execute as @e[type=#nld:no_collision,sort=random,limit=1,team=!nld.no_collision,tag=!global.ignore] run team join nld.no_collision @s

# item despawn
execute as @e[type=minecraft:item,tag=!global.ignore] store result score @s nld.age run data get entity @s Age

# config data
function nld:config

# clear lag
execute if score nld.clear_lag_on nld.config matches 1 run function nld:clear_lag/main


# start commends from config
execute if score nld.start nld.data matches 1 run scoreboard players set nld.start nld.data 0


# tick
schedule function nld:main/tick/second 1s
