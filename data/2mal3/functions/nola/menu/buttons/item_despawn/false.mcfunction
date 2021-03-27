# Description: Disables item despawn
# Called from function: 2mal3:nola/menu/display
# Datapack by 2mal3

# Saves the setting
scoreboard players set $item_despawn nola.config 0
# Stops the loop
schedule clear 2mal3:nola/modules/item_despawn/loop

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_1
