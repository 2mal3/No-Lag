# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Datapack reloaded","color":"green"}]
scoreboard objectives add nola.data dummy
execute unless score %installed nola.data matches 1 run function nola:core/install
execute if score %installed nola.data matches 1 unless score $version nola.data matches 30106 run function nola:core/update


