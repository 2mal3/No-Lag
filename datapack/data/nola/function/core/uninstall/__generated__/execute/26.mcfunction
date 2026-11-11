# Datapack by 2mal3 (https://github.com/2mal3)

setblock -30000000 58 1601 minecraft:repeating_command_block{auto: 1b, Command: "/scoreboard players set %commandBlock nola.data 1"}
schedule function nola:core/uninstall/__generated__/sequence/1 2t replace


