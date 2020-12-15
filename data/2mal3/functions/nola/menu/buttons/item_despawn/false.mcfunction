# Description: Disables item despawn
# Called from function: 2mal3:nola/menu/display
# Datapack by 2mal3

# Saves the setting
scoreboard players set $nola.item_despawn nola.config 0

# Displays the updated config menu
function 2mal3:nola/menu/display_config
