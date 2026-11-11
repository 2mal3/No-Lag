function nola:menu/click
scoreboard players set $diagTotal nola.data 0
scoreboard players set $diagItems nola.data 0
scoreboard players set $diagXP nola.data 0
scoreboard players set $diagProjectiles nola.data 0
scoreboard players set $diagTNT nola.data 0
execute as @e run function nola:menu/diagnostics/count_entity
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"text":"No Lag Entity Diagnostics","bold":true,"color":"gold"}]
tellraw @s [{"text":"Total loaded entities: ","color":"gold"},{"score":{"name":"$diagTotal","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"Dropped items: ","color":"gold"},{"score":{"name":"$diagItems","objective":"nola.data"},"color":"red"},{"text":"  XP orbs: ","color":"gold"},{"score":{"name":"$diagXP","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"Projectiles: ","color":"gold"},{"score":{"name":"$diagProjectiles","objective":"nola.data"},"color":"red"},{"text":"  Primed TNT: ","color":"gold"},{"score":{"name":"$diagTNT","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"Entities removed by lag clear: ","color":"gold"},{"score":{"name":"$lagClearDeleted","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"Items despawned by No Lag: ","color":"gold"},{"score":{"name":"$itemDespawns","objective":"nola.data"},"color":"red"},{"text":"  XP orbs merged: ","color":"gold"},{"score":{"name":"$xpMergedOrbs","objective":"nola.data"},"color":"red"}]
tellraw @s [{"text":"Stale projectiles removed: ","color":"gold"},{"score":{"name":"$projectilesRemoved","objective":"nola.data"},"color":"red"}]
execute if score $diagTotal nola.data matches 2001.. run tellraw @s {"text":"Warning: many entities are loaded. Check farms and chunk loaders.","color":"red"}
execute if score $diagItems nola.data matches 501.. run tellraw @s {"text":"Warning: many dropped items are loaded. Item cleanup is optional in Settings.","color":"red"}
execute if score $diagXP nola.data matches 251.. run tellraw @s {"text":"Warning: many XP orbs are loaded. XP merging is optional in Settings.","color":"red"}
execute if score $diagProjectiles nola.data matches 251.. run tellraw @s {"text":"Warning: many projectiles are loaded. Stale-projectile cleanup is optional in Settings.","color":"red"}
tellraw @s {"text":"Warnings only: diagnostics never remove entities.","color":"gray"}
tellraw @s {"text":"\u25c0 Back to menu","color":"red","click_event":{"action":"run_command","command":"/function nola:menu/menu"},"hover_event":{"action":"show_text","value":"*click*"}}