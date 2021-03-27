# Description: The item despawn loop every minute
# As: server; At: server
# Called from function: -
# Datapack by 2mal3

# Item despawn
execute as @e[type=minecraft:item,tag=!global.ignore.kill] run function 2mal3:nola/modules/item_despawn/main

# Calls the function again in the next minute
schedule function 2mal3:nola/modules/item_despawn/loop 60s replace