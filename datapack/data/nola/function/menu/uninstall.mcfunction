# Datapack by 2mal3 (https://github.com/2mal3)

function nola:menu/click
tellraw @s {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"text":"Do you really want to uninstall the No Lag Datapack?\n","color":"red"},{"text":"[ No ]","color":"dark_green","click_event":{"action":"run_command","command":"/function nola:menu/menu"},"hover_event":{"action":"show_text","value":"*click*"}},{"text":"  [ Yes ]","color":"dark_red","click_event":{"action":"run_command","command":"/function nola:core/uninstall/check"},"hover_event":{"action":"show_text","value":"*click*"}}]
tellraw @s {"text":""}


