# Description: Removes all unused entitys
# AS: server, AT: server
# Called from function: 2mal3:nola/modules/lag_clear/main
# Datapack by 2mal3

tellraw @a[scores={nola.debug_mode=3..}] [{"text":"[","color":"gray"},{"text":"NoLag","color":"green"},{"text":"/","color":"gray"},{"text":"INFO","color":"green"},{"text": "/","color": "gray"},{"text":"Server", "color": "green"},{"text":"]: ","color":"gray"},{"text":"Cleared lag","color":"green"}]

# Reset variables
scoreboard players set .temp_0 nola.data 0
scoreboard players set .temp_1 nola.data 0
scoreboard players set .temp_2 nola.data 0

# Remove the entitys
execute store result score .temp_0 nola.data run tp @e[tag=!nola.ignore_kill,tag=!nola.ignore_kill.near,tag=!nola.ignore_kill.farm] ~ -1000 ~
execute store result score .temp_1 nola.data run kill @e[type=minecraft:item_frame,predicate=!2mal3:nola/have_item,tag=!nola.ignore,tag=!global.ignore,tag=!global.ignore.kill]
execute as @e[type=minecraft:armor_stand,predicate=!2mal3:nola/used,name=!"ignore",tag=!global.ignore,tag=!global.ignore.kill] unless data entity @s ArmorItems.[0].id unless data entity @s ArmorItems.[1].id unless data entity @s ArmorItems.[2].id unless data entity @s ArmorItems.[3].id run execute store result score .temp_2 nola.data run kill @s

# Calculates deleted entitys
scoreboard players operation .temp_0 nola.data += .temp_1 nola.data
scoreboard players operation .temp_0 nola.data += .temp_2 nola.data

# Print chat massage
execute if score $lag_clear_messages nola.config matches 1 run tellraw @a [{"score":{"name":".temp_0","objective":"nola.data","color":"gray"}},{"text":" unneeded entitys were deleted.","color":"gray"}]

# Reset lag clear time
scoreboard players operation .lag_clear_time nola.data = $lag_clear_time nola.config
