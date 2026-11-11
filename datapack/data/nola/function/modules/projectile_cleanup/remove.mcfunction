execute if entity @p[distance=..16] run return 0
execute if data entity @s CustomName run return 0
execute on passengers run return 0
execute on vehicle run return 0
scoreboard players add $projectilesRemoved nola.data 1
scoreboard players reset @s nola.projectileAge
kill @s