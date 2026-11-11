# Datapack by 2mal3 (https://github.com/2mal3)

execute if entity @s[tag=!nola.noAI,tag=!nola.noAI.ignore] unless entity @p[gamemode=!spectator,distance=..42] run function nola:modules/no_ai/enable
execute if entity @s[tag=nola.noAI] if entity @p[gamemode=!spectator,distance=..42] run function nola:modules/no_ai/disable


