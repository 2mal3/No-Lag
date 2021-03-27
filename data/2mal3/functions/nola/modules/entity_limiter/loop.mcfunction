# Description: The entity limiter loop every minute
# As: server; At: server
# Called from function: -
# Datapack by 2mal3

# Automatically deletes new entitys if there are too many of the same type nearby
execute as @e[type=!#2mal3:nola/ignore,type=!#2mal3:nola/ignore_kill,tag=!nola.ignore_kill,tag=!nola.entity_limiter.processed] at @s run function 2mal3:nola/modules/entity_limiter/main

# Calls the function again in the next minute
schedule function 2mal3:nola/modules/entity_limiter/loop 60s replace