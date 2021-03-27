# Description: Disables entity limiter
# Called from function: 2mal3:nola/menu/display
# Datapack by 2mal3

# Saves the setting
scoreboard players set $entity_limiter nola.config 0
# Stops the loop
schedule clear 2mal3:nola/modules/entity_limiter/loop

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_2
