# Description: Deletes manually all items that lay on the ground
# AS: player, AT: player
# Called from function: 2mal3:nola/menu/display_menu
# Datapack by 2mal3

# Disables command fedback for a short time, so that no disturbing message is displayed
gamerule sendCommandFeedback false
schedule function 2mal3:nola/menu/send_command_feedback_true 1t
# Plays click sound
playsound minecraft:ui.button.click master @s

execute store result score .temp_0 nola.data run kill @e[type=minecraft:item,tag=!global.ignore]
tellraw @a[tag=!global.ignore] [{"text":"Deleted ","color":"gold"},{"score":{"name":".temp_0","objective":"nola.data"},"color":"red"},{"text":" items","color":"gold"}]
