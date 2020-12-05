# Description: Stores several statistics about the world
# Called from function: -
# Datapack by 2mal3

# Number of players
execute store result score $nola.players nola.data run execute if entity @a

# Number of entitys
execute store result score $nola.entitys nola.data run execute if entity @e

# Number of frozen entitys
execute store result score $nola.frozen_entitys nola.data run execute if entity @e[tag=nola.no_ai]

# Number of unneeded entitys
execute store result score $nola.unneeded_entitys nola.data run execute if entity @e[tag=!nola.ignore_kill]

# Maximum number of entitys on a block
execute store result score $nola.max_entity_cramming nola.data run gamerule maxEntityCramming