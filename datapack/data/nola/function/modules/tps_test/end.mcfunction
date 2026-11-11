# Datapack by 2mal3 (https://github.com/2mal3)

scoreboard players operation .temp0 nola.data = .tpsTestTimer nola.data
scoreboard players operation .tpsTestTimer nola.data /= $300 nola.data
scoreboard players operation %tps2 nola.data = %tps1 nola.data
scoreboard players operation %tps1 nola.data = %tps0 nola.data
scoreboard players operation %tps0 nola.data = .tpsTestTimer nola.data
worldborder add 1
schedule clear nola:modules/tps_test/clock
schedule function nola:modules/tps_test/start 1t replace


