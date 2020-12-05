# Description: Deletes manually all unused entitys
# Called from function: 2mal3:nola/menu/display_menu
# Datapack by 2mal3

# Disables command fedback for a short time, so that no disturbing message is displayed
gamerule sendCommandFeedback false
schedule function 2mal3:nola/menu/send_command_feedback_true 1t

# Plays click sound
playsound minecraft:ui.button.click master @s


# Remembers all useful entitys
execute as @e at @s run function 2mal3:nola/ignore
execute as @e at @s run function 2mal3:nola/ignore_kill

# Executes lag clear
function 2mal3:nola/modules/lag_clear/clear_lag