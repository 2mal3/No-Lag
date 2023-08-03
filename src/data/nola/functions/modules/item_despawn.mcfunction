from nola:log import log


function ~/main:
    scoreboard players add @s nola.item_despawn_time 1
    execute if score @s nola.item_despawn_time >= $item_despawn.time nola.config:
        log "debug" "@s" "Item despawned"
        kill @s
