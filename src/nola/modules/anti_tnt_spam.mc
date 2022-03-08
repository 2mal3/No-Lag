import ../../../macros/log.mcm


function main {
  tag @s add nola.processed

  fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:structure_void replace minecraft:tnt
  execute store result score .temp0 nola.data run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:tnt replace minecraft:structure_void

  execute if score .temp0 nola.data matches 5.. run {
    log NoLag debug entity <Stopped TNT spam>
    kill @s
  }
}
