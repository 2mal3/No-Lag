# Description: Preparation commands
# From: #reaload
# Datapack by 2mal3

# Info
tellraw @a ["",{"text":"[Server] The No Lag Datapack v."},{"score":{"name":"V1","objective":"nld.data"}},{"text":"."},{"score":{"name":"V2","objective":"nld.data"}},{"text":"."},{"score":{"name":"V3","objective":"nld.data"}},{"text":" by 2mal3 was loaded!"}]


# Scoreboards
scoreboard objectives add nld.data dummy
scoreboard objectives add nld.xp dummy

scoreboard players set V1 nld.data 1
scoreboard players set V2 nld.data 6
scoreboard players set V3 nld.data 1

scoreboard players set nld.start nld.data 1
scoreboard players set nld.entitys nld.data 0
scoreboard players set nld.max_entitys nld.data 0
scoreboard players set nld.lag nld.data 0
scoreboard players set nld.tnt nld.data 0
scoreboard players set nld.timer nld.data 0


# Teams
team add nld.no_collision
team modify nld.no_collision collisionRule never
