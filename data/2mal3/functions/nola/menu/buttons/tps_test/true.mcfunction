# Description: Enables tps_test
# AS: player, AT: player
# Called from function: 2mal3:nola/menu/display_config/page_2
# Datapack by 2mal3

# Saves the setting
scoreboard players set $tps_test nola.config 1

# Starts the tps test loops
function 2mal3:nola/modules/tps_test/start

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_2
