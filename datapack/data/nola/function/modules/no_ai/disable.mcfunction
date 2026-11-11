# Datapack by 2mal3 (https://github.com/2mal3)

tag @s remove nola.noAI
tellraw @a[scores={2mal3.debugMode=4..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text": "/","color": "gray"},{"selector": "@s","color": "aqua"},{"text":"]: ","color":"gray"},{"text":"Enabled AI","color":"aqua"}]
data merge entity @s {NoAI: 0b, Invulnerable: 0b}


