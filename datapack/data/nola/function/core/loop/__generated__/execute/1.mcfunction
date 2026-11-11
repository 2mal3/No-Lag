# Datapack by 2mal3 (https://github.com/2mal3)

execute if score $xpMerge nola.config matches 1 if entity @s[type=minecraft:experience_orb] run function nola:modules/xp_merge/main
execute if score $antiTNTSpam nola.config matches 1 if entity @s[type=minecraft:tnt,tag=!nola.processed] run function nola:modules/anti_tnt_spam/main
execute if score $noAI nola.config matches 1 if entity @s[type=!minecraft:villager,type=!#nola:modules/no_ai/ignore,team=!thisTeamDoesNotExist,name=!"ignore"] run function nola:modules/no_ai/distance
execute if score $noAI nola.config matches 0 if entity @s[tag=nola.noAI] run function nola:modules/no_ai/disable
tag @s remove nola.noAI.ignore


