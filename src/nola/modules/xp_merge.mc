
function main {
  execute if entity @s[tag=!nola.dead] run {
    execute store result score .xp nola.data run data get entity @s Value

    tag @s add nola.this
    execute at @s as @e[type=minecraft:experience_orb,distance=..2.5,tag=!nola.this] run {
      execute store result score .temp0 nola.data run data get entity @s Value
      scoreboard players operation .xp nola.data += .temp0 nola.data
      tag @s add nola.dead
      kill @s
    }
    tag @s remove nola.this

    execute store result entity @s Value double 1 run scoreboard players get .xp nola.data
  }
}
