# Description: Ask if you want to uninstall
# Called from tag: 2mal3:nola/uninstall
# Datapack by 2mal3

# Disables command fedback for a short time, so that no disturbing message is displayed
gamerule sendCommandFeedback false
schedule function 2mal3:nola/menu/send_command_feedback_true 1t

# Plays click sound
playsound minecraft:ui.button.click master @s


# Display uninstall ask text
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s [{"text":"Do you really want to deinstall the No Lag Datapack by 2mal3?","color":"red"},{"text":"\n"},{"text":"[No]","color":"dark_green","hoverEvent":{"action":"show_text","value":"*click*"},"clickEvent":{"action":"run_command","value":"/function #2mal3:nola/menu"}},{"text":" "},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/core/uninstall/uninstall"},"hoverEvent":{"action":"show_text","value":"*click*"}}]
