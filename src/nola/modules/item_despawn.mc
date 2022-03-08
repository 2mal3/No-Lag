
function main {
  scoreboard players add @s nola.itemDespawnTime 1
  execute if score @s nola.itemDespawnTime >= $itemDespawnTime nola.config run kill @s
}
