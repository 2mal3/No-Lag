# Description: Merges one xp orb with another xp
# AS: xp that was not merged into another xp yet with a other xp in range 2, AT: @s
# Called from function: 2mal3:nola/modules/xp_merge/test
# Datapack by 2mal3

# Select other xp
tag @e[type=minecraft:experience_orb,tag=!nola.processed,distance=0.001..2,sort=nearest,limit=1,tag=!global.ignore,tag=!global.ignore.kill] add nola.merge

# Merge
scoreboard players operation @s nola.xp += @e[type=minecraft:experience_orb,tag=nola.merge] nola.xp
execute store result entity @s Value double 1 run scoreboard players get @s nola.xp

# Remove other xp
tag @e[type=minecraft:experience_orb,tag=nola.merge] add nola.processed
kill @e[type=minecraft:experience_orb,tag=nola.merge]
