# Description: The xp merge loop every minute
# As: server; At: server
# Called from function: -
# Datapack by 2mal3

# Merge nearby xp orbs, if activated
function 2mal3:nola/modules/xp_merge/main

# Calls the function again in the next minute
schedule function 2mal3:nola/modules/xp_merge/loop 1s replace