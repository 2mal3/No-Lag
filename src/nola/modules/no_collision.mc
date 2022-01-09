import ../../../macros/log.mcm


function main {
  log NoLag debug entity <Disabled collision>
  tag @s add nola.processed

  team join nola.noCollision @s
}

entities farm_animales {
  minecraft:cow
  minecraft:sheep
  minecraft:mooshroom
  minecraft:pig
  minecraft:chicken
  minecraft:rabbit
  minecraft:turtle
  minecraft:glow_squid
  minecraft:goat
  minecraft:bee
}
