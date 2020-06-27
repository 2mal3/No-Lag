# Description: Calculates percentage value
# Called from: main/tick/second
# Datapack by 2mal3

scoreboard players operation nld.in_1 nld.math *= nld.in_0 nld.math
scoreboard players operation nld.in_1 nld.math /= nld.100 nld.math
scoreboard players operation nld.out_0 nld.math = nld.in_1 nld.math
