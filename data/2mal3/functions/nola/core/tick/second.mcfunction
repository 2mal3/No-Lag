# Description: Tick commands every second
# AS: server, AT: server
# Called from function: 2mal3:nola/core/reload, 2mal3:nola/core/tick/second
# Datapack by 2mal3

# Remembers entitys that should not be considered
tag @e[tag=nola.ignore] remove nola.ignore
tag @e[type=#2mal3:nola/ignore] add nola.ignore
tag @e[name="ignore"] add nola.ignore
tag @e[tag=global.ignore] add nola.ignore
execute if score $area_ignorer nola.config matches 1 as @e[type=minecraft:armor_stand,name="ignore",tag=!global.ignore] at @s as @e[distance=..64,tag=!nola.ignore] run tag @s add nola.ignore

# Disable entity ai if the entity is to far away from the player, if activated
execute if score $no_ai nola.config matches 1 run function 2mal3:nola/modules/no_ai/main
execute if score $no_ai nola.config matches 0 as @e[type=!#2mal3:nola/ignore,tag=nola.no_ai] run function 2mal3:nola/modules/no_ai/disable

# Merge nearby xp orbs, if activated
execute if score $xp_merge nola.config matches 1 run function 2mal3:nola/modules/xp_merge/main

# Shows all area ignorer with particles, if activated
execute if score $area_ignorer nola.config matches 1 as @e[type=minecraft:armor_stand,name="ignore",tag=!global.ignore] at @s run particle minecraft:happy_villager ~ ~ ~ 0.2 1 0.2 1 5


# call the function next second
schedule function 2mal3:nola/core/tick/second 1s replace
