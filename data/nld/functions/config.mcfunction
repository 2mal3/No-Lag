##################################
##### No Lag Datapack Config #####
##################################



### Maximum entities on one block ###                                        V
execute if score nld.start nld.data matches 1 run gamerule maxEntityCramming 12



### Maximum number of tnt ###                                                                 V
execute if score nld.start nld.data matches 1 run scoreboard players set nld.max_tnt nld.config 15


### Shoud be clear lag be activated ###                                                              V
execute if score nld.start nld.data matches 1 run scoreboard players set nld.clear_lag_on nld.config 1
### Time betwen lag clears (in seconds) ###                                                             V
execute if score nld.start nld.data matches 1 run scoreboard players set nld.clear_lag_time nld.config 600



### Range in which mobs are switched off ###                                                                        V
execute as @e[type=!#nld:ignore,tag=nld.NoAI,tag=!global.ignore,predicate=!nld:ignore] at @s if entity @a[distance=..41] run data merge entity @s {NoAI:0b}
execute as @e[type=!#nld:ignore,tag=nld.NoAI,tag=!global.ignore,predicate=!nld:ignore] at @s if entity @a[distance=..41] run tag @s remove nld.NoAI
execute as @e[type=!#nld:ignore,tag=!nld.NoAI,tag=!global.ignore,predicate=!nld:ignore] at @s unless entity @a[distance=..41] run data merge entity @s {NoAI:1b}
execute as @e[type=!#nld:ignore,tag=!nld.NoAI,tag=!global.ignore,predicate=!nld:ignore] at @s unless entity @a[distance=..41] run tag @s add nld.NoAI
#                                                                                                                         A



### Time after the items despawnen in ticks ###
kill @e[tag=!global.ignore,type=item,scores={nld.age=3600..}]
#                                                     A



### Number of entities from which the lag is increased (recoment max_entitys=200+(300*players)) ### V
execute if score nld.start nld.data matches 1 run scoreboard players set nld.max_entitys nld.config 500


#####################################
### Measures for too much entitys ###
# When the measures are taken: execute if score nld.entitys nld.data > nld.max_entitys nld.data if score nld.lag nld.data matches <Lag time> run <command>
# When resolving measures: execute if score nld.entitys nld.data < nld.max_entitys nld.data if score nld.lag nld.data matches <lag time> run <command>
#####################################
execute if score nld.entitys nld.data > nld.max_entitys nld.config if score nld.lag nld.data matches 120 run gamerule doMobSpawning false
execute if score nld.entitys nld.data > nld.max_entitys nld.config if score nld.lag nld.data matches 120 run say Mob Spawnig was switched off

execute if score nld.entitys nld.data < nld.max_entitys nld.config if score nld.lag nld.data matches 120 run gamerule doMobSpawning true
execute if score nld.entitys nld.data < nld.max_entitys nld.config if score nld.lag nld.data matches 120 run say Mob Spawnig was switched on
