# Description: init the datapack
# From: #reaload
# Datapack by 2mal3

# Scoreboards
scoreboard objectives add nld.data dummy
scoreboard objectives add nld.xp dummy
scoreboard objectives add nld.age dummy
scoreboard objectives add nld.config dummy
scoreboard objectives add nld.math dummy

scoreboard players set V1 nld.data 1
scoreboard players set V2 nld.data 11
scoreboard players set V3 nld.data 8

scoreboard players set nld.start nld.data 1
scoreboard players set nld.entitys nld.data 0
scoreboard players set nld.tnt nld.data 0

scoreboard players set nld.100 nld.math 100
scoreboard players set nld.100 nld.math 100


# message
schedule function nld:main/reload_message 4s


# Teams
team add nld.no_collision
team modify nld.no_collision collisionRule never


# tick
schedule clear nld:clear_team
schedule clear nld:main/tick/second

function nld:main/tick/second
schedule function nld:clear_team 1d


# clear lag variables
execute if score nld.clear_lag_on nld.config matches 1 run function nld:clear_lag/init


# easyer config  file 1.9.8
# clear lag 1.10.8
# better global.ignore 1.11.8
