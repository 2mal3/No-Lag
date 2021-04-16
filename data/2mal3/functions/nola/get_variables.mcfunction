# Description: Stores several statistics about the world
# AS: server, AT: server
# Called from: -
# Datapack by 2mal3

# Number of players
execute store result score $players nola.data run execute if entity @a

# Number of entitys
execute store result score $entitys nola.data run execute if entity @e

# Number of frozen entitys
execute store result score $frozen_entitys nola.data run execute if entity @e[tag=nola.no_ai]

# Number of unneeded entitys
execute store result score $unneeded_entitys nola.data run execute if entity @e[tag=!nola.ignore_kill]

# Maximum number of entitys on a block
execute store result score $max_entity_cramming nola.data run gamerule maxEntityCramming
