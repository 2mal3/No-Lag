# Description: Enables xp merge
# Called from function: 2mal3:nola/menu/display_config
# Datapack by 2mal3

# Saves the setting
scoreboard players set $xp_merge nola.config 1
# Starts the loop
schedule function 2mal3:nola/modules/xp_merge/loop 1s replace

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_1
