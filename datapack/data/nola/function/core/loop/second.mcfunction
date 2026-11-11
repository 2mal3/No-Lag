# Fast, targeted jobs run every second; general entity AI checks are staggered to every five seconds.
schedule function nola:core/loop/second 1s
execute if score $xpMerge nola.config matches 1 as @e[type=minecraft:experience_orb,tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity] at @s run function nola:modules/xp_merge/main
execute if score $antiTNTSpam nola.config matches 1 as @e[type=minecraft:tnt,tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity,tag=!nola.processed] at @s run function nola:modules/anti_tnt_spam/main
scoreboard players add $noAICycle nola.data 1
execute if score $noAICycle nola.data matches 5.. run function nola:core/loop/no_ai
execute as @a[scores={nola.deathCount=1..}] at @s run function nola:modules/lag_clear/death