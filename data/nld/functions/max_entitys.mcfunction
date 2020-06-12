# Description: Count the entities and recover the lag
# From: main/tick
# Datapack by 2mal3

scoreboard players set nld.entitys nld.data 0
execute as @e[type=!#nld:ignore] run scoreboard players add nld.entitys nld.data 1
