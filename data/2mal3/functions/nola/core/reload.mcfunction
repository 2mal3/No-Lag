# Description: Init datapack
# AS: server, AT: server
# Called from tag: minecraft:reaload
# Datapack by 2mal3

tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text":"Server", "color": "green"},{"text":"]: ","color":"gray"},{"text":"Reloaded datapack","color":"green"}]

# Add basic scoreboards
scoreboard objectives add nola.data dummy
# Initializes the datapack at the first startup or new version
execute unless score $nola.first_run nola.data matches 1 run function 2mal3:nola/core/first_run/main
execute if score $nola.first_run nola.data matches 1 unless score $version nola.data matches 020406 run function 2mal3:nola/core/first_run/update

# Saves that the datapack was started
scoreboard players set nola load.status 1

# Start datapack loops
schedule function 2mal3:nola/core/tick/second 1s replace
schedule function 2mal3:nola/core/tick/minute 60s replace
schedule function 2mal3:nola/core/tick/day 1d replace
