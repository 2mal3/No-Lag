# Description: clear every day the team nld.no_collision for bugfixes
# From: main/reaload, clear_team
# Datapack by 2mal3

# remove
team remove nld.no_collision

# add
team add nld.no_collision
team modify nld.no_collision collisionRule never

# tick
schedule function nld:clear_team 1d
