# Datapack by 2mal3 (https://github.com/2mal3)

execute if score %commandBlock nola.data matches 0 run tellraw @a [{"text":"[","color":"gray"},{"text":"NoLag","color":"red"},{"text":"/","color":"gray"},{"text":"ERROR","color":"red"},{"text": "/","color": "gray"},{"text": "Server","color": "red"},{"text":"]: ","color":"gray"},{"text":"The uninstallation of the datapack was aborted because command blocks are disabled. Please enable command blocks in the server properties and try again.","color":"red"}]
execute if score %commandBlock nola.data matches 1 run function nola:core/uninstall/uninstall


