# Description: Ask if you want to uninstall
# From: #uninstall
# Datapack by 2mal3

tellraw @s ["",{"text":"Do you really want to deinstall the No Lag Dtapack v.","color":"red"},{"score":{"name":"V1","objective":"nld.data"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"V2","objective":"nld.data"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"V3","objective":"nld.data"},"color":"red"},{"text":" from 2mal3?","color":"red"},{"text":"\n"},{"text":"[No]","color":"dark_green","hoverEvent":{"action":"show_text","value":"*click*"}},{"text":" \u0020"},{"text":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nld:main/uninstall/uninstall"},"hoverEvent":{"action":"show_text","value":"*click*"}}]
