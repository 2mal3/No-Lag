# Description: init the datapack
# From: #reaload
# Datapack by 2mal3

# Scoreboards
scoreboard objectives add nld.data dummy
scoreboard objectives add nld.xp dummy
scoreboard objectives add nld.age dummy

scoreboard players set V1 nld.data 1
scoreboard players set V2 nld.data 9
scoreboard players set V3 nld.data 7

scoreboard players set nld.start nld.data 1
scoreboard players set nld.entitys nld.data 0
scoreboard players set nld.tnt nld.data 0


# message
schedule function nld:main/reload_message 4s


# Teams
team add nld.no_collision
team modify nld.no_collision collisionRule never


# tick
schedule clear nld:clear_team
schedule clear nld:main/tick/2

schedule function nld:main/tick/2 1s
schedule function nld:clear_team 1d


# better performance 1.8.6
# revised measure system 1.9.6
# better reload message 1.9.7
