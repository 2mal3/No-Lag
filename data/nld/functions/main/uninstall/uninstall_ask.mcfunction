# Description: Ask if you want to uninstall
# Called from: #uninstall
# Datapack by 2mal3

tellraw @s ["",{"translate":"Do you really want to deinstall the ","color":"red"},{"text":"No Lag Datapack","color":"red"},{"text":" v.","color":"red"},{"score":{"name":"V1","objective":"nld.data"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"V2","objective":"nld.data"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"V3","objective":"nld.data"},"color":"red"},{"translate":" by 2mal3?","color":"red"},{"text":"\n"},{"translate":"[No]","color":"dark_green","hoverEvent":{"action":"show_text","value":"*click*"}},{"text":" \u0020"},{"translate":"[Yes]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nld:main/uninstall/uninstall"},"hoverEvent":{"action":"show_text","value":"*click*"}}]
