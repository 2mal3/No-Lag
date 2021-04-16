# Description: Disables tps_test
# AS: player, AT: player
# Called from function: 2mal3:nola/menu/display_config/page_2
# Datapack by 2mal3

# Saves the setting
scoreboard players set $tps_test nola.config 0

# Stops the tps test loops
schedule clear 2mal3:nola/modules/tps_test/start
schedule clear 2mal3:nola/modules/tps_test/loop

# Displays the updated config menu
function 2mal3:nola/menu/display_config/page_2
