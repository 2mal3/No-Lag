# Description: Disables no ai
# AS: player, AT: player
# Called from function: 2mal3:nola/menu/display_config
# Datapack by 2mal3

# Saves the setting
scoreboard players set $no_ai nola.config 0

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_1
