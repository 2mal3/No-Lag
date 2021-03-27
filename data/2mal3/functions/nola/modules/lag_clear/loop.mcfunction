# Description: The lag clear loop every minute
# As: server; At: server
# Called from function: -
# Datapack by 2mal3

# Deletes all par minutes all unused entitys, if activated
execute if score $lag_clear_not_at_night nola.config matches 0 run function 2mal3:nola/modules/lag_clear/main
execute if score $lag_clear_not_at_night nola.config matches 1 if predicate 2mal3:nola/is_day run function 2mal3:nola/modules/lag_clear/main

# Calls the function again in the next minute
schedule function 2mal3:nola/modules/lag_clear/loop 60s replace