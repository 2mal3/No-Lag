# Description: Finishes the uninstallation by 
# AS: server, AT: server
# Called from function: 2mal3:nola/core/uninstall/uninstall
# Datapack by 2mal3

# Remove the marker
kill 6605427f-f242-4b1a-a37a-c2b86a3d8ac5
# Remove last scoreboards
scoreboard objectives remove nola.data
# Disable the datapack
datapack disable "file/No-Lag-Datapack-v2.4.5"
datapack disable "file/No-Lag-Datapack-v2.4.5.zip"
datapack disable "file/No-Lag-Datapack"
