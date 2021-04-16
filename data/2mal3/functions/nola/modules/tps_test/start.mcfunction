# Description: Starts the tps test
# AS: server, AT: server
# Called from function: 2mal3:nola/-
# Datapack by 2mal3

# Resets the tick counter
scoreboard players set .tps_test_timer nola.data 0

# Calculates how large the worldboarder will be after a scrum of a block
execute store result score .worldborder nola.data run worldborder get
scoreboard players remove .worldborder nola.data 1

# Shrinks the worldboarder by one block in 5 minutes
worldborder add -1 300

# Starts the counting loop in one tick
schedule function 2mal3:nola/modules/tps_test/loop 1t replace
