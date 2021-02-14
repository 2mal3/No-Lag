# Description: Installs the Datapack on first start
# Called from function: 2mal3:nola/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled
tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Installed datapack.","color":"green"}]


# Sends Insatlations message
tellraw @a [{"text":"No Lag Datapack v2.1.0 by 2mal3 was installed!","color":"blue"}]


# Sets the configuration to a start level
scoreboard players set $nola.area_ignorer nola.config 1

gamerule maxEntityCramming 12

scoreboard players set $nola.item_despawn nola.config 1
scoreboard players set $nola.item_despawn_time nola.config 3

scoreboard players set $nola.no_ai nola.config 1
scoreboard players set $nola.no_ai_distance nola.config 42

scoreboard players set $nola.xp_merge nola.config 1

scoreboard players set $nola.lag_clear nola.config 1
scoreboard players set $nola.lag_clear_time nola.config 10
scoreboard players set $nola.lag_clear_not_at_night nola.config 0
scoreboard players set $nola.lag_clear_time nola.data 10

scoreboard players set $nola.entity_limiter nola.config 0
scoreboard players set $nola.entity_limiter.max_hostile nola.config 16
scoreboard players set $nola.entity_limiter.max_neutral nola.config 16
scoreboard players set $nola.entity_limiter.max_passive nola.config 16


# Saves that the datapack was installed
scoreboard players set $nola.first_run nola.data 1
