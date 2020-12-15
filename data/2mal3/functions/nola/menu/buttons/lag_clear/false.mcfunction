# Description: Disables lag clear
# Called from function: 2mal3:nola/menu/display_config
# Datapack by 2mal3

# Saves the setting
scoreboard players set $nola.lag_clear nola.config 0

# Displays the updated config menu
function 2mal3:nola/menu/display_config
