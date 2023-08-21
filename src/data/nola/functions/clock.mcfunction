
function ~/minute:
    schedule function ~/ 60s replace

    execute as @e:
        execute if score $item_despawn.enabled nola.config matches 1 if entity @s[type=minecraft:item] run function nola:modules/item_despawn/main
        execute if score $no_collision.enabled nola.config matches 1 if entity @s[type=#nola:farm_animals] run function nola:modules/no_collision/enable


function ~/second:
    schedule function ~/ 1s replace

    execute as @e:
        execute if score $xp_merge.enabled nola.config matches 1 if entity @s[type=minecraft:experience_orb] run function nola:modules/xp_merge/main
