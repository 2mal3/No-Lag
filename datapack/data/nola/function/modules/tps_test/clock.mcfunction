# Datapack by 2mal3 (https://github.com/2mal3)

schedule function nola:modules/tps_test/clock 1t replace
scoreboard players add .tpsTestTimer nola.data 1
execute store result score .temp0 nola.data run worldborder get
execute if score .temp0 nola.data = %worldBorder nola.data run function nola:modules/tps_test/end


