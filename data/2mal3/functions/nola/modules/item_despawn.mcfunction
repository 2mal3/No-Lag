# Description: Custom Item Despawn Time
# Called from function: 2mal3:nola/core/tick/minute
# Datapack by 2mal3

# add time
scoreboard players add @s nola.despawn 1

# kill item if time is over
execute if score @s nola.despawn >= $item_despawn_time nola.config run kill @s