# Description: Main datapack loop every minute
# Called from function: 2mal3:nola/core/reload, 2mal3:nola/core/tick/minute
# Datapack by 2mal3

# Remembers entitys that should not be considered.
execute as @e at @s run function 2mal3:nola/ignore_kill

# Call the function again in the next minute
schedule function 2mal3:nola/core/tick/minute 60s replace
