# Datapack by 2mal3 (https://github.com/2mal3)

tellraw @a[scores={2mal3.debugMode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text": "Server","color": "green"},{"text":"]: ","color":"gray"},{"text":"Execute lag clear","color":"green"}]
scoreboard players operation %lagClearTime nola.data = $lagClearTime nola.config
scoreboard players set .temp0 nola.data 0
execute as @e[tag=!global.ignore,tag=!global.ignore.kill,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity,type=!#nola:modules/lag_clear/ignore,name=!"ignore"] at @s run function nola:modules/lag_clear/__generated__/execute/1
execute if score $lagClearMessages nola.config matches 1 run tellraw @a[tag=!global.ignore] [{"score":{"name":".temp0","objective":"nola.data","color":"gray"}},{"text":" unneeded entities were deleted","color":"gray"}]


