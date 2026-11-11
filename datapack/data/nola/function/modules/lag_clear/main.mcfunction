# Datapack by 2mal3 (https://github.com/2mal3)

scoreboard players remove %lagClearTime nola.data 1
execute if score %lagClearTime nola.data matches 1 if score $lagClearMessages nola.data matches 1 run tellraw @a[tag=!global.ignore] [{"text":"In ","color":"gray"},{"text":"1 minute","color":"white"},{"text":" all unneeded entities will be deleted","color":"gray"}]
execute if score %lagClearTime nola.data matches 0 run function nola:modules/lag_clear/clear


