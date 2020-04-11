# Description: Preparation commands
# From: #reaload
# Datapack by 2mal3

# Info
say The No Lag Datapack v.1.4 by 2mal3 was reloaded!

# Info
advancement grant @a from main:root


# Scoreboards
scoreboard objectives add nld.data dummy
scoreboard objectives add nld.xp dummy

scoreboard players set nld.start nld.data 1
scoreboard players set nld.entitys nld.data 0
scoreboard players set nld.max_entitys nld.data 0
scoreboard players set nld.lag nld.data 0
scoreboard players set nld.tnt nld.data 0
scoreboard players set nld.timer nld.data 0


# Teams
team add nld.no_collision
team modify nld.no_collision collisionRule never