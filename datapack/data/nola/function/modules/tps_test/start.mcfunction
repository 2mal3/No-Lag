# Datapack by 2mal3 (https://github.com/2mal3)

scoreboard players set .tpsTestTimer nola.data 0
execute store result score %worldBorder nola.data run worldborder get
scoreboard players remove %worldBorder nola.data 1
worldborder add -1 300
schedule function nola:modules/tps_test/clock 1t replace


