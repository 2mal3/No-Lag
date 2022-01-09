
function main {
  scoreboard players add @s nola.itemDespawnTime 1
  execute if score @s nola.itemDespawnTime matches 2 run kill @s
}
