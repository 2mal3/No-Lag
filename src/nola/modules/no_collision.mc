import ../../../macros/log.mcm


function main {
  log NoLag debug entity <Disabled collision>
  tag @s add nola.processed

  team join nola.noCollision @s
}

entities farm_animales {
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
