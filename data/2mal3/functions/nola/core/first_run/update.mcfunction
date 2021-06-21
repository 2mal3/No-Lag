# Description: Adds new things at the first start of a new datapack version
# AS: server, AT: server
# Called from function: 2mal3:nola/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled
tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Updated datapack!","color":"green"}]


# Set version variable in format xx.xx.xx
scoreboard players set $version nola.data 020403
# Summon new marker entity at worldspawn
summon minecraft:marker ~ ~ ~ {UUID: [I; 1711620735, -230536422, -1552235848, 1782418117]}
