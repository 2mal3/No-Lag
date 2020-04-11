# Description: Main
# From: #tick
# Datapack by 2mal3


# start commends from config
execute if score nld.start nld.data matches 1 run scoreboard players set nld.start nld.data 0

# config data
function nld:config

# remove tnt
scoreboard players set nld.tnt nld.data 0
execute as @e[type=tnt] run scoreboard players add nld.tnt nld.data 1

execute if score nld.tnt nld.data > nld.max_tnt nld.data run say All TNTs have been deleted.
execute if score nld.tnt nld.data > nld.max_tnt nld.data run kill @e[type=tnt]

# xp combine
execute as @e[type=minecraft:experience_orb] store result score @s nld.xp run data get entity @s Value
execute as @e[type=minecraft:experience_orb,sort=random,limit=1] at @s if entity @e[type=minecraft:experience_orb,distance=..2] run function nld:xp_combine


# Timer
scoreboard players add nld.timer nld.data 1
execute if score nld.timer nld.data matches 20 run function nld:main/tick/2
execute if score nld.timer nld.data matches 20 run scoreboard players set nld.timer nld.data 0
