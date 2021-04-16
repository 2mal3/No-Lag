# Description: Tick commands every minute
# AS: server, AT: server
# Called from function: 2mal3:nola/core/reload, 2mal3:nola/core/tick/minute
# Datapack by 2mal3

# Remembers entitys that should not be considered.
execute as @e at @s run function 2mal3:nola/ignore_kill


# Item despawn
execute if score $item_despawn nola.config matches 1 as @e[type=minecraft:item,tag=!global.ignore.kill] run function 2mal3:nola/modules/item_despawn

# No collision
team join nola.no_collision @e[type=#2mal3:nola/breedable]

# Deletes all par minutes all unused entitys, if activated
execute if score $lag_clear nola.config matches 1 if score $lag_clear_not_at_night nola.config matches 0 run function 2mal3:nola/modules/lag_clear/main
execute if score $lag_clear nola.config matches 1 if score $lag_clear_not_at_night nola.config matches 1 if predicate 2mal3:nola/is_day run function 2mal3:nola/modules/lag_clear/main

# Automatically deletes new entitys if there are too many of the same type nearby
execute if score $entity_limiter nola.config matches 1 as @e[type=!#2mal3:nola/ignore,type=!#2mal3:nola/ignore_kill,tag=!nola.ignore_kill,tag=!nola.entity_limiter.processed] at @s run function 2mal3:nola/modules/entity_limiter/main


# call the function next minute
schedule function 2mal3:nola/core/tick/minute 60s replace
