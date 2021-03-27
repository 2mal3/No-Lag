# Description: Tick commands every second
# Called from function: 2mal3:nola/core/reload, 2mal3:nola/core/tick/second
# Datapack by 2mal3

# Remembers entitys that should not be considered
execute as @e at @s run function 2mal3:nola/ignore
execute if score $area_ignorer nola.config matches 1 as @e[type=minecraft:armor_stand,name="ignore"] at @s as @e[distance=..64,tag=!nola.ignore] run tag @s add nola.ignore

# Shows all area ignorer with particles, if activated
execute if score $area_ignorer nola.config matches 1 as @e[type=minecraft:armor_stand,name="ignore"] at @s run particle minecraft:happy_villager ~ ~ ~ 0.2 1 0.2 1 5

# Call the function again in the next second
schedule function 2mal3:nola/core/tick/second 1s replace
