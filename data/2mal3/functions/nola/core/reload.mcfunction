# Description: Init datapack
# Called from tag: minecraft:reaload
# Datapack by 2mal3

# Output debug message in chat, if enabled
tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text":"]: ","color":"gray"},{"text":"Reloaded datapack.","color":"green"}]


# Initializes the datapack at the first startup or new version
execute unless score $nola.first_run nola.data matches 1 run function 2mal3:nola/core/first_run/main
execute if score $nola.first_run nola.data matches 1 unless score $nola.version nola.data matches 020201 run function 2mal3:nola/core/first_run/update


# datapack loops
function 2mal3:nola/core/tick/second
function 2mal3:nola/core/tick/minute
function 2mal3:nola/core/tick/day


# turtle