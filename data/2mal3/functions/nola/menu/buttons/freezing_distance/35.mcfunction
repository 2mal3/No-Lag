# Description: Sets the block freezing distance to 35
# AS: player, AT: player
# Called from function: 2mal3:nola/menu/display_config
# Datapack by 2mal3

# Saves the setting
scoreboard players set $no_ai_distance nola.config 35

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_1
