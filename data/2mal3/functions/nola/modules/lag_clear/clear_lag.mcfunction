# Description: Removes all unused entitys
# Called from function: 2mal3:nola/modules/lag_clear/main
# Datapack by 2mal3

# Output debug message in chat, if enabled
tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Cleared lag.","color":"green"}]

# Removes entitys
scoreboard players set .temp_0 nola.data 0
execute store result score .temp_0 nola.data run tp @e[tag=!nola.ignore_kill,tag=!nola.ignore_kill.near,tag=!nola.ignore_kill.farm] ~ -100 ~

# Print chat massage
tellraw @a [{"score":{"name":".temp_0","objective":"nola.data","color":"gray"}},{"text":" unneeded entitys were deleted.","color":"gray"}]

# Reset lag clear time
scoreboard players operation .lag_clear_time nola.data = $lag_clear_time nola.config