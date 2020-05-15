# Description: Preparation commands
# From: #reaload
# Datapack by 2mal3

# Scoreboards
scoreboard objectives add nld.data dummy
scoreboard objectives add nld.xp dummy

scoreboard players set V1 nld.data 1
scoreboard players set V2 nld.data 6
scoreboard players set V3 nld.data 4

scoreboard players set nld.start nld.data 1
scoreboard players set nld.entitys nld.data 0
scoreboard players set nld.lag nld.data 0
scoreboard players set nld.tnt nld.data 0


# Info
tellraw @a ["",{"text":"[Server] The No Lag Datapack v."},{"score":{"name":"V1","objective":"nld.data"}},{"text":"."},{"score":{"name":"V2","objective":"nld.data"}},{"text":"."},{"score":{"name":"V3","objective":"nld.data"}},{"text":" by 2mal3 was loaded!"}]


# Teams
team add nld.no_collision
team modify nld.no_collision collisionRule never


# tick
schedule clear nld:clear_team
schedule clear nld:main/tick/2

schedule function nld:main/tick/2 1s
schedule function nld:clear_team 1d
