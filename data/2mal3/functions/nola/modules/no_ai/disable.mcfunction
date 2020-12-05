# Description: Disable the AI from the entity
# Called from function: 2mal3:nola/modules/no_ai/mode/35, 2mal3:nola/modules/no_ai/mode/64
# Datapack by 2mal3

# Output debug message in chat, if enabled
tellraw @a[scores={nola.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"AI from entity ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":" enabled.","color":"aqua"}]

# Disable AI
data merge entity @s {NoAI:0b,Invulnerable:0b}
tag @s remove nola.no_ai