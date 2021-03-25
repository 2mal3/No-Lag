# Description: Automatically deletes new entitys if there are too many of the same type nearby
# Called from function: 2mal3:nola/core/tick/second
# Datapack by 2mal3

# Tests the number of the same entity group in the near
execute if entity @s[type=#2mal3:nola/hostile] store result score .temp_0 nola.data run execute if entity @e[type=#2mal3:nola/hostile,distance=..8]
execute if entity @s[type=#2mal3:nola/neutral] store result score .temp_0 nola.data run execute if entity @e[type=#2mal3:nola/neutral,distance=..8]
execute if entity @s[type=#2mal3:nola/passive] store result score .temp_0 nola.data run execute if entity @e[type=#2mal3:nola/passive,distance=..8]

# Deletes the entity if the number of same entitys in the near are higher than in the config
execute if entity @s[type=#2mal3:nola/hostile] if score .temp_0 nola.data > $entity_limiter.max_hostile nola.config run function 2mal3:nola/modules/entity_limiter/remove
execute if entity @s[type=#2mal3:nola/neutral] if score .temp_0 nola.data > $entity_limiter.max_neutral nola.config run function 2mal3:nola/modules/entity_limiter/remove
execute if entity @s[type=#2mal3:nola/passive] if score .temp_0 nola.data > $entity_limiter.max_passive nola.config run function 2mal3:nola/modules/entity_limiter/remove


# Saves that the entity has been processed, so it will not be processed again
tag @s add nola.entity_limiter.processed