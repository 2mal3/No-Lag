# Description: The no ai loop every minute
# As: server; At: server
# Called from function: -
# Datapack by 2mal3

# Disable entity ai if the entity is to far away from the player, if activated
function 2mal3:nola/modules/no_ai/main

# Calls the function again in the next minute
schedule function 2mal3:nola/modules/no_ai/loop 1s replace