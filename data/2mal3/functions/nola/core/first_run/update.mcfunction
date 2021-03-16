# Description: Adds new things at the first start of a new datapack version
# Called from function: 2mal3:nola/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled
tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Updated datapack!","color":"green"}]


# Set version variable in format xx.xx.xx
scoreboard players set $nola.version nola.data 020300