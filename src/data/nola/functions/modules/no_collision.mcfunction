from nola:log import log


function ~/enable:
    log "debug" "@s" "Enabled collision"
    tag @s add nola.processed

    team join nola.no_collision @s


function ~/disable:
    log "debug" "@s" "Disabled collision"
    tag @s remove nola.processed

    team leave @s
