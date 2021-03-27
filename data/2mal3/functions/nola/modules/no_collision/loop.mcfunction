# Description: The no collision loop every minute
# As: server; At: server
# Called from function: -
# Datapack by 2mal3

# No collision
team join nola.no_collision @e[type=#2mal3:nola/breedable]

# Calls the function again in the next minute
schedule function 2mal3:nola/modules/no_collision/loop 60s replace