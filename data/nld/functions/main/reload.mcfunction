# Description: Preparation commands
# From: #reaload
# Datapack by 2mal3

tellraw @a {"text":" "}
say The No Lag Datapack v.1.4 by 2mal3 was reloaded!
tellraw @a [{"text":"For more info: "},{"text":"/trigger info","color":"gray","clickEvent":{"action":"suggest_command","value":"/trigger info"}}]
tellraw @a {"text":" "}



# Scoreboards
scoreboard objectives add info trigger
scoreboard objectives add nld.info trigger
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

#To do:
#-entitys stacking 1.4
