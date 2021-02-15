# Description: Init datapack
# Called from tag: minecraft:reaload
# Datapack by 2mal3

# Output debug message in chat, if enabled
tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Reloaded datapack.","color":"green"}]

# Add scoreboards
scoreboard objectives add nola.data dummy
scoreboard objectives add nola.config dummy
scoreboard objectives add nola.despawn dummy
scoreboard objectives add nola.xp dummy
scoreboard objectives add nola.debug_mode dummy

# Add teams
team add nola.no_collision
team modify nola.no_collision collisionRule pushOtherTeams

# Set version variable in format xx.xx.xx
scoreboard players set $nola.version nola.data 020201

# Send installation massage after 4 sekonds
execute unless score $nola.first_run nola.data matches 1 run schedule function 2mal3:nola/core/first_run 4s


# datapack loops
function 2mal3:nola/core/tick/second
function 2mal3:nola/core/tick/minute
function 2mal3:nola/core/tick/day


# turtle