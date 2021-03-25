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
tellraw @s [{"text":"< -------- ","color":"yellow","hoverEvent":{"action":"show_text","contents":""}},{"text":"1 / 2","color":"gold","hoverEvent":{"action":"show_text","contents":""}},{"text":" -------- ","color":"yellow","hoverEvent":{"action":"show_text","contents":""}},{"text":">","color":"gold","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_config/page_2"},"hoverEvent":{"action":"show_text","contents":"*click*"}}]
# tellraw @s [{"text":"<","color":"gold","clickEvent":{"action":"run_command","value":"/say 1"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" -------- ","color":"yellow","hoverEvent":{"action":"show_text","contents":""}},{"text":"1 / 2","color":"gold","hoverEvent":{"action":"show_text","contents":""}},{"text":" -------- ","color":"yellow","hoverEvent":{"action":"show_text","contents":""}},{"text":">","color":"gold","clickEvent":{"action":"run_command","value":"/say 2"},"hoverEvent":{"action":"show_text","contents":"*click*"}}]

tellraw @s {"text":""}


# Displays Config for maximum entitys on a block
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/gamerule maxEntityCramming"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Maximum entiys on one block: ","color":"gold","hoverEvent":{"action":"show_text","contents":"How many entitys can stand on a block before one gets damaged?"}},{"score":{"name":"$max_entity_cramming","objective":"nola.data"},"color":"red"}]

tellraw @s {"text":""}

# Displays config for custom item despan
execute if score $item_despawn nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/item_despawn/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Custom item despawn","color":"gold","hoverEvent":{"action":"show_text","contents":"Items are deleted after a specified time."}}]
execute if score $item_despawn nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/item_despawn/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Custom item despawn","color":"gold","hoverEvent":{"action":"show_text","contents":"Items are deleted after a specified time."}}]
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $item_despawn_time nola.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Item despawn time: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Time after items are deleted in minutes (max. 5)."}},{"score":{"name":"$item_despawn_time","objective":"nola.config"},"color":"red"}]

tellraw @s {"text":""}

# Displays config for no ai
execute if score $no_ai nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/no_ai/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" "},{"text":"Entity freezing","color":"gold","hoverEvent":{"action":"show_text","contents":"Freezes all set entitys if they are outside a certain distance."}}]
execute if score $no_ai nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/no_ai/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" "},{"text":"Entity freezing","color":"gold","hoverEvent":{"action":"show_text","contents":"Freezes all set entitys if they are outside a certain distance."}}]


execute if score $no_ai_distance nola.config matches 35 run tellraw @s [{"text":"Freezing distance: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Distance from which entitys are frozen."}},{"text":"[35]","color":"red"},{"text":" ","color":"gray"},{"text":"[42]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/42"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" ","color":"gray"},{"text":"[64]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/64"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" ","color":"gray"},{"text":"[72]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/72"},"hoverEvent":{"action":"show_text","contents":"*click*"}}]

execute if score $no_ai_distance nola.config matches 42 run tellraw @s [{"text":"Freezing distance: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Distance from which entitys are frozen."}},{"text":"[35]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/35"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" [42]","color":"red"},{"text":" ","color":"gray"},{"text":"[64]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/64"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" ","color":"gray"},{"text":"[72]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/72"},"hoverEvent":{"action":"show_text","contents":"*click*"}}]

execute if score $no_ai_distance nola.config matches 64 run tellraw @s [{"text":"Freezing distance: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Distance from which entitys are frozen."}},{"text":"[35]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/35"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" ","color":"gray"},{"text":"[42]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/42"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" [64]","color":"red"},{"text":" ","color":"gray"},{"text":"[72]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/72"},"hoverEvent":{"action":"show_text","contents":"*click*"}}]

execute if score $no_ai_distance nola.config matches 72 run tellraw @s [{"text":"Freezing distance: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Distance from which entitys are frozen."}},{"text":"[35]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/35"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" ","color":"gray"},{"text":"[42]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/42"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" ","color":"gray","hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":"[64]","color":"gray","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/freezing_distance/64"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" [72]","color":"red"}]

tellraw @s {"text":""}

# Displays config for xp merge
execute if score $xp_merge nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/xp_merge/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Merge xp orbs","color":"gold","hoverEvent":{"action":"show_text","contents":"Xp Orbs will be merged (this may affect the Mendig enchantment)."}}]
execute if score $xp_merge nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/xp_merge/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Merge xp orbs","color":"gold","hoverEvent":{"action":"show_text","contents":"Xp Orbs will be merged (this may affect the Mendig enchantment)."}}]

tellraw @s {"text":""}

# Displays config for lag clear
execute if score $lag_clear nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/lag_clear/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear","color":"gold","hoverEvent":{"action":"show_text","contents":"Deletes all unused entitys in set time intervals."}}]
execute if score $lag_clear nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/lag_clear/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear","color":"gold","hoverEvent":{"action":"show_text","contents":"Deletes all unused entitys in set time intervals."}}]
tellraw @s [{"text":"[\u270e]","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set $lag_clear_time nola.config "},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear time: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Time interval in which a lag clear is executed (in minutes)."}},{"score":{"name":"$lag_clear_time","objective":"nola.config"},"color":"red"}]
execute if score $lag_clear_not_at_night nola.config matches 0 run tellraw @s [{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/lag_clear_not_at_night/true"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear not at night","color":"gold","hoverEvent":{"action":"show_text","contents":"The Lag Clear is deactivated overnight."}}]
execute if score $lag_clear_not_at_night nola.config matches 1 run tellraw @s [{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/buttons/lag_clear_not_at_night/false"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear not at night","color":"gold","hoverEvent":{"action":"show_text","contents":"The Lag Clear is deactivated overnight."}}]

tellraw @s {"text":""}

# Shows key to main menu
tellraw @s {"text":"<<<< Back","color":"red","clickEvent":{"action":"run_command","value":"/function 2mal3:nola/menu/display_menu"},"hoverEvent":{"action":"show_text","contents":"*click*"}}

tellraw @s {"text":""}

# \u274c : false
# \u2714 : true