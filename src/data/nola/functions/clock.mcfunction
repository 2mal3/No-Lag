
function ~/minute:
    schedule function ~/ 60s replace

    execute as @e:
        execute if entity @s[type=minecraft:item] if score $item_despawn.enabled nola.config matches 1 run function nola:modules/item_despawn/main
