# Description: Tick commands every second
# Called from function: 2mal3:nola/core/reload, 2mal3:nola/core/tick/second
# Datapack by 2mal3

# Remembers entitys that should not be considered.
execute as @e at @s run function 2mal3:nola/ignore

# Disable entity ai if the entity is to far away from the player, if activated
execute if score $nola.no_ai nola.config matches 1 run function 2mal3:nola/modules/no_ai/main

# Merge nearby xp orbs, if activated
execute if score $nola.xp_merge nola.config matches 1 run function 2mal3:nola/modules/xp_merge/main


# call the function next second
schedule function 2mal3:nola/core/tick/second 1s
