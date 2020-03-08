# Description: Ask if you want to uninstall
# From: #uninstall
# Datapack by 2mal3

tellraw @s ["",{"text":"Do you really want to deinstall the No Lag Dtapack v.1.4 by 2mal3? ","color":"red"},{"text":"[No] ","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"*click*"}]}}},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nld:main/uninstall/2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"*click*"}]}},"bold":false}]
