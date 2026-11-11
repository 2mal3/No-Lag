scoreboard players set $noAICycle nola.data 0
execute if score $noAIAreaIgnorer nola.config matches 1 as @e[type=minecraft:armor_stand,name="ignore"] at @s run function nola:modules/no_ai/area_ignore
execute if score $noAI nola.config matches 1 if score $noAIHostileOnly nola.config matches 0 as @e[tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity,type=!minecraft:villager,type=!#nola:modules/no_ai/ignore,team=!thisTeamDoesNotExist,name=!"ignore"] at @s run function nola:modules/no_ai/distance
execute if score $noAI nola.config matches 1 if score $noAIHostileOnly nola.config matches 1 as @e[tag=nola.noAI,type=!#nola:modules/no_ai/hostile] run function nola:modules/no_ai/disable
execute if score $noAI nola.config matches 1 if score $noAIHostileOnly nola.config matches 1 as @e[type=#nola:modules/no_ai/hostile,tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity,team=!thisTeamDoesNotExist,name=!"ignore"] at @s run function nola:modules/no_ai/distance
execute if score $noAI nola.config matches 0 as @e[tag=nola.noAI] run function nola:modules/no_ai/disable
execute as @e[tag=nola.noAI.ignore] run tag @s remove nola.noAI.ignore