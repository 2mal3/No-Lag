# Slow jobs run once per minute and visit only relevant entity types.
schedule function nola:core/loop/minute 60s
execute if score $itemDespawn nola.config matches 1 as @e[type=minecraft:item] at @s run function nola:modules/item_despawn/main
execute if score $noCollision nola.config matches 1 as @e[type=#nola:modules/no_collision/farm_animals,tag=!nola.processed] run function nola:modules/no_collision/enable
execute if score $noCollision nola.config matches 0 as @e[type=#nola:modules/no_collision/farm_animals,tag=nola.processed] run function nola:modules/no_collision/disable
execute if score $projectileCleanup nola.config matches 1 as @e[type=minecraft:arrow,tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity] at @s run function nola:modules/projectile_cleanup/age
execute if score $projectileCleanup nola.config matches 1 as @e[type=minecraft:spectral_arrow,tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity] at @s run function nola:modules/projectile_cleanup/age
execute if score $projectileCleanup nola.config matches 1 as @e[type=minecraft:trident,tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity] at @s run function nola:modules/projectile_cleanup/age
execute if score $lagClear nola.config matches 1 run function nola:modules/lag_clear/main