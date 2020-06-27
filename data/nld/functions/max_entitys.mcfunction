# Description: Count the entities and recover the lag
# From: main/tick/second
# Datapack by 2mal3

scoreboard players set nld.entitys nld.data 0
execute as @e[type=!#nld:ignore] run scoreboard players add nld.entitys nld.data 1

execute if score nld.entitys nld.data > nld.max_entitys nld.data run scoreboard players add nld.lag nld.data 2
execute if score nld.lag nld.data matches 1.. if score nld.entitys nld.data < nld.max_entitys nld.data run scoreboard players remove nld.lag nld.data 1
