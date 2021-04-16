# Description: Counts the ticks until the worldboarder has shrunk by one block in 5 minutes and then calls the calculation function
# AS: server, AT: server
# Called from function: 2mal3:nola/modules/tps_test/start
# Datapack by 2mal3

# Counts a tick
scoreboard players add .tps_test_timer nola.data 1

# Calculates the tps when the worldboarder has shrunk around a block after 5 minutes
execute store result score .temp_0 nola.data run worldborder get
execute if score .temp_0 nola.data = .worldborder nola.data run function 2mal3:nola/modules/tps_test/calculate

# Call this function again in one tick
schedule function 2mal3:nola/modules/tps_test/loop 1t replace
