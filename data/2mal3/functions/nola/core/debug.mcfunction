# Description: Sends a debug message with information about the datapack and the world to the executing player
# AS: player, AT: player
# Called from: -
# Datapack by 2mal3

# Disables command fedback for a short time, so that no disturbing message is displayed
gamerule sendCommandFeedback false
schedule function 2mal3:nola/menu/send_command_feedback_true 1t

# Plays click sound
playsound minecraft:ui.button.click master @s


# Get variables
execute store result score .temp_0 nola.data run data get entity @s DataVersion
execute store result score .temp_1 nola.data run datapack list
execute store result score .temp_2 nola.data run execute if entity @a

# nola version; minecraft version; datapack count; player count
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"text":"Debug data: ","color":"gold"},{"score":{"name":"$version","objective":"nola.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_0","objective":"nola.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_1","objective":"nola.data"},"color":"red"},{"text":"; ","color":"gold"},{"score":{"name":".temp_2","objective":"nola.data"},"color":"red"}]

# Shows key to main menu
tellraw @s {"text":""}
tellraw @s {"text":"<<<< Back","color":"red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_menu"},"hoverEvent":{"action":"show_text","contents":"*click*"}}
