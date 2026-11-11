# Datapack by 2mal3 (https://github.com/2mal3)

schedule function nola:core/loop/minute 60s
execute as @e[tag=!global.ignore,tag=!smithed.block,tag=!smithed.strict,tag=!smithed.entity] run function nola:core/loop/__generated__/execute/7
execute if score $lagClear nola.config matches 1 run function nola:modules/lag_clear/main


