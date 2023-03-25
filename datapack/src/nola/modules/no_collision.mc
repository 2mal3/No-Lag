import ../../../macros/log.mcm


function enable {
    log NoLag debug entity <Disabled collision>
    tag @s add nola.processed

    team join nola.noCollision @s
}

function disable {
    log NoLag debug entity <Enabled collision>
    tag @s remove nola.processed

    team leave @s
}

entities farm_animals {
    minecraft:bee
    minecraft:chicken
    minecraft:donkey
    minecraft:cow
    minecraft:glow_squid
    minecraft:goat
    minecraft:mooshroom
    minecraft:mule
    minecraft:pig
    minecraft:rabbit
    minecraft:sheep
    minecraft:turtle
}
