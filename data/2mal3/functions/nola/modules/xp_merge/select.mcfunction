# Description: Goes through all xp balls one after the other
# AS: @e[type=minecraft:experience_orb,sort=random,limit=1], AT: @s
# Called from function: 2mal3:nola/core/tick/tick
# Datapack by 2mal3

function 2mal3:nola/modules/xp_merge/merge

tag @s add nola.processed
execute as @e[type=minecraft:experience_orb,sort=random,limit=1,tag=!nola.processed] at @s run function 2mal3:nola/modules/xp_merge/select
