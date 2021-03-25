# Description: Tick commands every day
# Called from function: 2mal3:nola/core/reload, 2mal3:nola/core/tick/day
# Datapack by 2mal3

# Reset the team for bug fixing
team remove nola.no_collision

team add nola.no_collision
team modify nola.no_collision collisionRule pushOtherTeams


# call the function next day
schedule function 2mal3:nola/core/tick/day 1d replace
