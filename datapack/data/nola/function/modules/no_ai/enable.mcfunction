# Datapack by 2mal3 (https://github.com/2mal3)

tag @s add nola.noAI
tellraw @a[scores={2mal3.debugMode=4..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text": "/","color": "gray"},{"selector": "@s","color": "aqua"},{"text":"]: ","color":"gray"},{"text":"Disabled AI","color":"aqua"}]
data merge entity @s {NoAI: 1b, Invulnerable: 1b}


