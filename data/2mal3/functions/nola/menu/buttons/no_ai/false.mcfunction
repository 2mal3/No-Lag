# Description: Disables no ai
# Called from function: 2mal3:nola/menu/display_config
# Datapack by 2mal3

# Saves the setting
scoreboard players set $no_ai nola.config 0
# Stops the loop
schedule clear 2mal3:nola/modules/no_ai/loop

# Reactivates the AI of all frozen entitys
execute as @e[tag=nola.no_ai] run function 2mal3:nola/modules/no_ai/disable

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_1
