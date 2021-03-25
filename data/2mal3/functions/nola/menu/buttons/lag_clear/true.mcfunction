# Description: Enables lag clear
# Called from function: 2mal3:nola/menu/display
# Datapack by 2mal3

# Saves the setting
scoreboard players set $lag_clear nola.config 1

# Reset lag clear time
scoreboard players operation .lag_clear_time nola.data = $lag_clear_time nola.config

# Display config menu
function 2mal3:nola/menu/display_config/page_1
