
function load {
  sequence {
    # Init
    forceload add -30000000 1600
    scoreboard objectives add 2mal3.data dummy
    scoreboard players set $version 2mal3.data 0
    scoreboard players set $commandBlock 2mal3.data 0
    scoreboard players set $server 2mal3.data 0
    scoreboard players set $moded 2mal3.data 0

    ## Places the commtopand blocks for the test
    delay 5s
    # Test if command blocks works
    setblock -30000000 58 1601 minecraft:repeating_command_block{auto: 1b, Command: "/scoreboard players set $commandBlock 2mal3.data 1"}
    # Test if its a server
    setblock -30000000 58 1602 minecraft:repeating_command_block{auto: 1b, Command: "minecraft:execute if entity @r"}
    setblock -30000000 58 1603 minecraft:repeating_command_block{auto: 1b, Command: "spigot:spigot"}
    setblock -30000000 58 1604 minecraft:repeating_command_block{auto: 1b, Command: "paper:paper"}
    setblock -30000000 58 1605 minecraft:repeating_command_block{auto: 1b, Command: "airplane:airplane"}
    setblock -30000000 58 1606 minecraft:repeating_command_block{auto: 1b, Command: "purpur:purpur"}
    # Test for modded minecraft
    setblock -30000000 58 1607 minecraft:repeating_command_block{auto: 1b, Command: "forge tps minecraft:overworld"}

    ## Execute checks
    delay 2t
    # Minecraft Version
    function version-proxy2:version/16
    function version-proxy2:version/17
    function version-proxy2:version/18
    # Vanilla
    execute if score $server 2mal3.data matches 0 store result score $server 2mal3.data run data get block -30000000 58 1602 SuccessCount
    # Spigot
    execute if score $server 2mal3.data matches 0 store result score $server 2mal3.data run data get block -30000000 58 1603 SuccessCount
    # Paper
    execute if score $server 2mal3.data matches 0 store result score $server 2mal3.data run data get block -30000000 58 1604 SuccessCount
    # Airplane
    execute if score $server 2mal3.data matches 0 store result score $server 2mal3.data run data get block -30000000 58 1605 SuccessCount
    # Purpur
    execute if score $server 2mal3.data matches 0 store result score $server 2mal3.data run data get block -30000000 58 1606 SuccessCount
    # Forge
    execute store result score $moded 2mal3.data run data get block -30000000 58 1607 SuccessCount

    # Clear command blocks
    fill -30000000 58 1601 -30000000 58 1608 minecraft:air
  }
}


dir version {
  function 16 {
    scoreboard players set $version 2mal3.data 16
    execute if block ~ ~ ~ minecraft:warped_button
  }
  function 17 {
    scoreboard players set $version 2mal3.data 17
    execute if block ~ ~ ~ minecraft:moss_block
  }
  function 18 {
    scoreboard players set $version 2mal3.data 18
    playsound minecraft:music_disc.otherside music @s
  }
}
