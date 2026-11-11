# Datapack by 2mal3 (https://github.com/2mal3)

execute on passengers run return 0
execute on vehicle run return 0
execute if entity @p[distance=..45] run return 0
execute if data entity @s CustomName run return 0
execute if data entity @s Owner run return 0
scoreboard players set .temp1 nola.data 0
execute if entity @s[type=#nola:modules/lag_clear/item_check] run function nola:modules/lag_clear/__generated__/execute/10
execute if score .temp1 nola.data matches 0 run return 0
return 1


