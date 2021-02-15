# Description: Deletes the entity if there are too many entitys of the same type nearby
# Called from function: 2mal3:nola/modules/entity_limiter/main
# Datapack by 2mal3

# Output debug message in chat, if enabled (DEBUG)
tellraw @a[scores={nola.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text":"]: ","color":"gray"},{"text":"Entity ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":" was deleted because there are too many entitys of the same type nearby.","color":"aqua"}]

# Deletes the entity
tp @s ~ -1000 ~