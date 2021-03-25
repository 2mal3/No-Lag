# Description: Installs the Datapack on first start
# Called from function: 2mal3:nola/core/reload
# Datapack by 2mal3

# Output debug message in chat, if enabled
tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Installed datapack.","color":"green"}]


# Add scoreboards
scoreboard objectives add nola.data dummy
scoreboard objectives add nola.config dummy
scoreboard objectives add nola.despawn dummy
scoreboard objectives add nola.xp dummy
scoreboard objectives add nola.debug_mode dummy

# Add teams
team add nola.no_collision
team modify nola.no_collision collisionRule pushOtherTeams


# Set version variable in format xx.xx.xx
scoreboard players set $version nola.data 020300


# Sets the configuration to a start level
scoreboard players set $area_ignorer nola.config 1

gamerule maxEntityCramming 12

scoreboard players set $item_despawn nola.config 1
scoreboard players set $item_despawn_time nola.config 3

scoreboard players set $no_ai nola.config 1
scoreboard players set $no_ai_distance nola.config 42

scoreboard players set $xp_merge nola.config 1

scoreboard players set $lag_clear nola.config 1
scoreboard players set $lag_clear_time nola.config 10
scoreboard players set $lag_clear_not_at_night nola.config 0
scoreboard players set .lag_clear_time nola.data 10

scoreboard players set $entity_limiter nola.config 0
scoreboard players set $entity_limiter.max_hostile nola.config 16
scoreboard players set $entity_limiter.max_neutral nola.config 16
scoreboard players set $entity_limiter.max_passive nola.config 16


# Sends Insatlations message after 4 sekonds
schedule function 2mal3:nola/core/first_run/send_message 4s

# Saves that the datapack was installed
scoreboard players set .first_run nola.data 1
