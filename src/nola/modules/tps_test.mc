# The tps tests are made possible by the fact that the worldborder shrinking is not affected by lag.
# Because of this we can simply can count the ticks the server runs in 5 min (the time worldborder needs to shrink one block) an then calculate the tps.

function start {
  scoreboard players set .tpsTestTimer nola.data 0

  # Calculates the size of the worldborder after shrinking one block
  execute store result score %worldBorder nola.data run worldborder get
  scoreboard players remove %worldBorder nola.data 1

  worldborder add -1 300

  schedule function nola:modules/tps_test/clock 1t replace
}

function clock {
  schedule function $block 1t replace

  scoreboard players add .tpsTestTimer nola.data 1

  execute store result score .temp0 nola.data run worldborder get
  execute if score .temp0 nola.data = %worldBorder nola.data run function nola:modules/tps_test/end
}

function end {
  scoreboard players operation .temp0 nola.data = .tpsTestTimer nola.data
  scoreboard players operation .tpsTestTimer nola.data /= $300 nola.data

  # Stores the last three tps tests in variables
  scoreboard players operation %tps2 nola.data = %tps1 nola.data
  scoreboard players operation %tps1 nola.data = %tps0 nola.data
  scoreboard players operation %tps0 nola.data = .tpsTestTimer nola.data

  worldborder add 1

  schedule clear nola:modules/tps_test/clock
  schedule function nola:modules/tps_test/start 1t replace
}
