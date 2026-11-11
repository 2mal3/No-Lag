# Datapack by 2mal3 (https://github.com/2mal3)

execute store result score .temp0 nola.data run data get entity @s DataVersion
execute unless score .temp0 nola.data matches 5023 run tellraw @s [{"text": "[", "color": "gray"},{"text": "NoLag", "color": "red", "bold": true},{"text": "]: ", "color": "gray"},{"text": "You are using the incorrect Minecraft version. Please check the website.","color": "red","bold": true}]



