# Datapack by 2mal3 (https://github.com/2mal3)

execute store result score .temp1 nola.data run function nola:modules/lag_clear/check_kill
execute if score .temp1 nola.data matches 1 run function nola:modules/lag_clear/__generated__/execute/3


