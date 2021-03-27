# Description: Enables entity limiter
# Called from function: 2mal3:nola/menu/display
# Datapack by 2mal3

# Saves the setting
scoreboard players set $entity_limiter nola.config 1
# Starts the loop
schedule function 2mal3:nola/modules/entity_limiter/loop 60s

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_2
