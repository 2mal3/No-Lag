# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Datapack installed","color":"green"}]
scoreboard players set %installed nola.data 1
scoreboard objectives add nola.data dummy
scoreboard objectives add nola.config dummy
scoreboard objectives add 2mal3.debugMode dummy
scoreboard objectives add nola.itemDespawnTime dummy
scoreboard objectives add nola.deathCount deathCount
team add nola.noCollision
team modify nola.noCollision collisionRule pushOwnTeam
scoreboard players set $version nola.data 30105
scoreboard players set $300 nola.data 300
forceload add -30000000 1600
schedule function nola:core/__generated__/schedule/0 4s replace
gamerule max_entity_cramming 4
scoreboard players set $antiTNTSpam nola.config 0
scoreboard players set $itemDespawn nola.config 1
scoreboard players set $itemDespawnTime nola.config 3
scoreboard players set $lagClear nola.config 1
scoreboard players set $lagClearTime nola.config 30
scoreboard players set %lagClearTime nola.data 30
scoreboard players set $lagClearMessages nola.config 1
scoreboard players set $noAI nola.config 1
scoreboard players set $noAIDistance nola.config 42
scoreboard players set $noAIAreaIgnorer nola.config 1
scoreboard players set $noCollision nola.config 1
scoreboard players set $xpMerge nola.config 1
scoreboard players set $tpsTest nola.config 0
schedule function nola:core/__generated__/schedule/1 4s replace


