# Description: Calculates the tps from the counted ticks and the time of the worldboarder and saves it. Then everything starts again from the beginning
# AS: server, AT: server
# Called from function: 2mal3:nola/modules/tps_test/loop
# Datapack by 2mal3

# Calculates the tps in the last 5 minutes (couted ticks / 300 sekonds (5 minutes) = ticks per second (tps))
scoreboard players operation .temp_0 nola.data = .tps_test_timer nola.data
scoreboard players operation .tps_test_timer nola.data /= $300 nola.data

# Stores the last three tps tests in variables
scoreboard players operation .tps_2 nola.data = .tps_1 nola.data
scoreboard players operation .tps_1 nola.data = .tps_0 nola.data
scoreboard players operation .tps_0 nola.data = .tps_test_timer nola.data

# Resets the worldboarder back to the original size
worldborder add 1

# Stops the counting loop
schedule clear 2mal3:nola/modules/tps_test/loop
# Calls the start function again in one tick
schedule function 2mal3:nola/modules/tps_test/start 1s replace

# Output debug message in chat, if enabled (INFO)
tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"TPS tested! In the last 5 minutes the tps was at ~","color":"green"},{"score":{"name":".tps_0","objective":"nola.data"},"color":"gray"},{"text":" (countetd ","color":"green"},{"score":{"name":".temp_0","objective":"nola.data"},"color":"gray"},{"text":" ticks)","color":"green"}]
