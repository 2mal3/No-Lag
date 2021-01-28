# Description: Tick commands every minute
# Called from function: 2mal3:nola/core/reload, 2mal3:nola/core/tick/minute
# Datapack by 2mal3

# Get variables
function 2mal3:nola/get_variables

# Remembers entitys that should not be considered.
execute as @e at @s run function 2mal3:nola/ignore_kill

# item despawn
execute if score $nola.item_despawn nola.config matches 1 as @e[type=minecraft:item,tag=!global.ignore.kill] run function 2mal3:nola/modules/item_despawn

# no collision
team join nola.no_collision @e[type=#2mal3:nola/farm_animal]

# Deletes all par minutes all unused entitys, if activated
execute if score $nola.lag_clear nola.config matches 1 if score $nola.lag_clear_not_at_night nola.config matches 0 run function 2mal3:nola/modules/lag_clear/main
execute if score $nola.lag_clear nola.config matches 1 if score $nola.lag_clear_not_at_night nola.config matches 1 if predicate 2mal3:nola/is_day run function 2mal3:nola/modules/lag_clear/main


# call the function next minute
schedule function 2mal3:nola/core/tick/minute 60s
