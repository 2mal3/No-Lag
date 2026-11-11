tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"/","color":"gray"},{"text":"Server","color":"green"},{"text":"]: ","color":"gray"},{"text":"Updated from v3.1.5 to v3.1.6","color":"green"}]
scoreboard objectives add nola.projectileAge dummy
scoreboard players set $noAIHostileOnly nola.config 0
scoreboard players set $projectileCleanup nola.config 0
scoreboard players set $noAICycle nola.data 0
scoreboard players set $lagClearDeleted nola.data 0
scoreboard players set $itemDespawns nola.data 0
scoreboard players set $xpMergedOrbs nola.data 0
scoreboard players set $projectilesRemoved nola.data 0
scoreboard players set $version nola.data 30106