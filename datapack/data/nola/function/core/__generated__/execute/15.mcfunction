# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Updated from v3.0.1 to v3.0.2","color":"green"}]
scoreboard players set $version nola.data 030002
scoreboard players reset $lagClearMessages nola.data
scoreboard players set $lagClearMessages nola.config 1


