# Description: Merges xp
# AS: @e[type=minecraft:experience_orb,sort=random,limit=1,tag=!nola.processed], AT: @s
# Called from function: 2mal3:nola/modules/xp_merge/select
# Datapack by 2mal3

tag @s add nola.this
tag @e[type=minecraft:experience_orb,sort=nearest,limit=1,distance=..2,tag=!nola.this] add nola.merge
scoreboard players operation @s nola.xp += @e[type=minecraft:experience_orb,tag=nola.merge] nola.xp
kill @e[type=minecraft:experience_orb,tag=nola.merge]
tag @s remove nola.this

execute store result entity @s Value double 1 run scoreboard players get @s nola.xp
