# Description: Tests if the selected xp was merged into another xp this tick 
# AS: xp with another xp in range 2, AT: @s
# Called from function: 2mal3:nola/modules/xp_merge/main
# Datapack by 2mal3

execute if entity @s[tag=!nola.processed] run function 2mal3:nola/modules/xp_merge/merge
