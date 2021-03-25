# Description: Clear lag loop
# Called from function: 2mal3:nola/core/tick/second
# Datapack by 2mal3

# Remove time
scoreboard players remove .lag_clear_time nola.data 1

# Sends a warning message that the lag clear will be executed in one minute
execute if score .lag_clear_time nola.data matches 1 run tellraw @a [{"text":"In ","color":"gray"},{"text":"1 minute","color":"white"},{"text":" all unneeded entitys will be deleted.","color":"gray"}]

# Deletes all unused entitys when time runs out
execute if score .lag_clear_time nola.data matches 0 run function 2mal3:nola/modules/lag_clear/clear_lag