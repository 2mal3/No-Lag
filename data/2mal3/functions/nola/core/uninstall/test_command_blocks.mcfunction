# Description: Test if command blocks are enabled on the server and notify if not
# AS: server, AT: server
# Called from function: 2mal3:nola/core/uninstall/uninstall
# Datapack by 2mal3

# Notify all players if command blocks are not enabled on the server
execute if score .temp_0 nola.data matches 0 run tellraw @a [{"text":"[","color":"gray"},{"text":"NoLag","color":"red"},{"text":"/","color":"gray"},{"text":"ERROR","color":"red"},{"text": "/","color": "gray"},{"text":"Server", "color": "red"},{"text":"]: ","color":"gray"},{"text":"Because command blocks are disabled on the server, the datapack can not be uninstalled properly.\nTo uninstall the datapack completely, enable command blocks in the server settings and then uninstall the datapack again.","color":"red"}]

# Remove test command block
setblock ~ 4 ~ minecraft:stone
