# Description: Deletes the entity if there are too many entitys of the same type nearby
# AS: @e[type=!#2mal3:nola/ignore,type=!#2mal3:nola/ignore_kill,tag=!nola.ignore_kill,tag=!nola.entity_limiter.processed], AT: @s
# Called from function: 2mal3:nola/modules/entity_limiter/main
# Datapack by 2mal3

tellraw @a[scores={nola.debug_mode=4..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"aqua"},{"text":"/","color":"gray"},{"text":"DEBUG","color":"aqua"},{"text": "/","color": "gray"},{"selector":"@s", "color": "aqua"},{"text":"]: ","color":"gray"},{"text":"Entity was deleted because there are too many entitys of the same type nearby","color":"aqua"}]

# Deletes the entity
tp @s ~ -1000 ~
