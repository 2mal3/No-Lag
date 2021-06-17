# Description: Disables lag_clear_messages
# AS: player, AT: player
# Called from function: 2mal3:nola/menu/display/page_1
# Datapack by 2mal3

# Saves the setting
scoreboard players set $lag_clear_messages nola.config 0

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_1
