# Description: Clear lag
# Called from: clear_lag/main
# Datapack by 2mal3

execute as @e[type=!#nld:clear_lag_ignore,tag=!global.ignore] at @s run tp @s ~ -1000 ~
tellraw @a {"translate":"All uperfluous entitys are deleted.","color":"red"}

scoreboard players operation nld.clear_lag_time nld.data = nld.clear_lag_time nld.config
