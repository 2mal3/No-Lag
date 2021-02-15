# Description: Displays the datapack config
# Called from message: 2mal3:nola/menu/display
# Datapack by 2mal3

# Disables command fedback for a short time, so that no disturbing message is displayed
gamerule sendCommandFeedback false
schedule function 2mal3:nola/menu/send_command_feedback_true 1t


# Plays click sound
playsound minecraft:ui.button.click master @s


# Get variables
function 2mal3:nola/get_variables


# Display config menu
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s [{"text":"No Lag Datapack Config","bold":true,"color":"gold"}]
tellraw @s [{"text":"<","color":"gold","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_config/page_1"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" -------- ","color":"yellow","hoverEvent":{"action":"show_text","contents":""}},{"text":"2 / 2","color":"gold","hoverEvent":{"action":"show_text","contents":""}},{"text":" -------- >","color":"yellow","hoverEvent":{"action":"show_text","contents":""}}]

tellraw @s {"text":""}


# Displays area ignorer
execute if score $nola.area_ignorer nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/area_ignorer/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Area ignorer","color":"gold","hoverEvent":{"action":"show_text","contents":"Armor stands renamed to ignore block the freezing of all entitys near them."}}]
execute if score $nola.area_ignorer nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/area_ignorer/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Area ignorer","color":"gold","hoverEvent":{"action":"show_text","contents":"Armor stands renamed to ignore block the freezing of all entitys near them."}}]

tellraw @s {"text":""}

# Displays entity limiter
execute if score $nola.entity_limiter nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/entity_limiter/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Entity limiter","color":"gold","hoverEvent":{"action":"show_text","contents":"If there are too many entitys of the same kind together, all new entitys of the kind will be deleted."}}]
execute if score $nola.entity_limiter nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/entity_limiter/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Entity limiter","color":"gold","hoverEvent":{"action":"show_text","contents":"If there are too many entitys of the same kind together, all new entitys of the kind will be deleted."}}]

tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $nola.entity_limiter.max_passive nola.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Maximum passive entitys together: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of passive entitys that can stand next to each other."}},{"score":{"name":"$nola.entity_limiter.max_passive","objective":"nola.config"},"color":"red"}]
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $nola.entity_limiter.max_neutral nola.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Maximum neutral entitys together: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of neutral entitys that can stand next to each other."}},{"score":{"name":"$nola.entity_limiter.max_neutral","objective":"nola.config"},"color":"red"}]
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $nola.entity_limiter.max_hostile nola.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Maximum hostile entitys together: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of hostile entitys that can stand next to each other."}},{"score":{"name":"$nola.entity_limiter.max_hostile","objective":"nola.config"},"color":"red"}]



tellraw @s {"text":"\n\n\n\n\n\n\n"}

# Shows key to main menu
tellraw @s {"text":"<<<< Back","color":"red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_menu"},"hoverEvent":{"action":"show_text","contents":"*click*"}}

tellraw @s {"text":""}

#$nola.lag_clear_not_at_night nola.config
# \u274c : false
# \u2714 : true