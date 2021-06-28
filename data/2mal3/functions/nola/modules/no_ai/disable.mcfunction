# Description: Disable the AI from the entity
# AS: @e[type=!#2mal3:nola/ignore,tag=!nola.no_ai(,tag=!nola.ignore)], AT: @s
# Called from function: 2mal3:nola/modules/no_ai/mode/35, 2mal3:nola/modules/no_ai/mode/64
# Datapack by 2mal3

tellraw @a[scores={nola.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text": "/","color": "gray"},{"selector":"@s", "color": "aqua"},{"text":"]: ","color":"gray"},{"text":"Enabled AI","color":"aqua"}]

# Disable AI
data merge entity @s {NoAI: 0b, Invulnerable: 0b}
tag @s remove nola.no_ai
