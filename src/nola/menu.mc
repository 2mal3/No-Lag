
function menu {
  function nola:menu/click

  # Display menu
  tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
  tellraw @s [{"text":"No Lag Datapack v3.0.1","bold":true,"color":"gold"},{"text":"\n------------------------\n","color":"gold"}]

  # execute if score $tps_test nola.config matches 1 run tellraw @s [{"text":"\u26a1 TPS last 5m, 10m, 15m: ","color":"gold"},{"score":{"name":".tps_0","objective":"nola.data"},"color":"red"},{"text":" "},{"score":{"name":".tps_1","objective":"nola.data"},"color":"red"},{"text":" "},{"score":{"name":".tps_2","objective":"nola.data"},"color":"red"}]
  execute store result score .temp0 nola.data run execute if entity @a
  tellraw @s [{"text":"\u263a Online players: ","color":"gold"},{"score":{"name":".temp0","objective":"nola.data"},"color":"red"}]
  execute store result score .temp0 nola.data run execute if entity @e
  tellraw @s [{"text":"\u2666 Entities in the world: ","color":"gold"},{"score":{"name":".temp0","objective":"nola.data"},"color":"red"}]
  execute store result score .temp0 nola.data run execute if entity @e[tag=nola.noAI]
  tellraw @s [{"text":"\u2744 Frozen entities: ","color":"gold"},{"score":{"name":".temp0","objective":"nola.data"},"color":"red"}]
  # tellraw @s [{"text":"\u2620 Unneeded entities: ","color":"gold"},{"score":{"name":"$unneededEntities","objective":"nola.data"},"color":"red"}]

  tellraw @s {"text":""}
  tellraw @s {"text":"\u2699 Configure the datapack \u25b6","clickEvent":{"action":"run_command","value":"/function nola:menu/config"},"hoverEvent":{"action":"show_text","value":"*click*"},"color":"gold"}
  tellraw @s {"text":"\u26a1 Delete all unused entities ","color":"gold","clickEvent":{"action":"run_command","value":"/function nola:modules/lag_clear/clear"},"hoverEvent":{"action":"show_text","contents":"*click*"}}
  tellraw @s {"text":"\u26a1 Delete all items ","color":"gold","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/clear_items"},"hoverEvent":{"action":"show_text","contents":"*click*"}}

  tellraw @s {"text":""}
  tellraw @s {"text":"\u2b24 Planet Minecraft Website","color":"aqua","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/no-lag-datapack/"},"hoverEvent":{"action":"show_text","contents":"*open link*"}}
  tellraw @s {"text":"\u2709 GitHub Website","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/2mal3/No-Lag-Datapack"},"hoverEvent":{"action":"show_text","contents":"*open link*"}}

  tellraw @s {"text":""}
  tellraw @s {"text":"\u26a0 Uninstall datapack \u25b6","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/uninstall"},"hoverEvent":{"action":"show_text","contents":"*click*"}}
  tellraw @s {"text":""}
}


function config {
  function nola:menu/click

  # Display config menu
  tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
  tellraw @s [{"text":"No Lag Datapack Config","bold":true,"color":"gold"}]
  tellraw @s {"text": "-------------------------", "color": "yellow"}

  # Presets
  tellraw @s [{"text": " §c[§6High Performance§c] ","clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/presets/high"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text": " §c[§6Default§c] ","clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/presets/default"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text": " §c[§6Less Impact§c] ","clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/presets/low"},"hoverEvent":{"action":"show_text","contents":"*click*"}}]

  tellraw @s {"text": ""}

  # noAI
  execute if score $noAI nola.config matches 0 run { 
    tellraw @s [{"text":"[ \u274c ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/no_ai/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Entity freezing","color":"gold","hoverEvent":{"action":"show_text","contents":"Freezes entities if they are outside a certain distance.\n§7Performance Improvement: §2High"}}]
  }
  execute if score $noAI nola.config matches 1 run {
    tellraw @s [{"text":"[ \u2714 ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/no_ai/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Entity freezing","color":"gold","hoverEvent":{"action":"show_text","contents":"Freezes entities if they are outside a certain distance.\n§7Performance Improvement: §2High"}}]
  }
  # noAIDistance
  execute if score $noAIDistance nola.config matches 42 run {
    tellraw @s [{"text":"Freezing distance: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Distance from which entities are frozen."}},{"text":"[ - ] ","color":"gray","hoverEvent":{"action":"show_text","contents":""}},{"score":{"name":"$noAIDistance","objective":"nola.config"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"dark_green","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/no_ai_distance/add"}}]
  }
  execute if score $noAIDistance nola.config matches 64 run {
    tellraw @s [{"text":"Freezing distance: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Distance from which entities are frozen."}},{"text":"[ - ] ","color":"dark_red","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/no_ai_distance/remove"}},{"score":{"name":"$noAIDistance","objective":"nola.config"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"dark_green","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/no_ai_distance/add"}}]
  }
  execute if score $noAIDistance nola.config matches 86 run {
    tellraw @s [{"text":"Freezing distance: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Distance from which entities are frozen."}},{"text":"[ - ] ","color":"dark_red","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/no_ai_distance/remove"}},{"score":{"name":"$noAIDistance","objective":"nola.config"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"gray","hoverEvent":{"action":"show_text","contents":""}}]
  }
  # noAIAreaIgnorer
  execute if score $noAIAreaIgnorer nola.config matches 0 run { 
    tellraw @s [{"text":"[ \u274c ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/no_ai_area_ignorer/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Area ignorer","color":"gold","hoverEvent":{"action":"show_text","contents":"Armor stands renamed to ignore block the freezing of all entities near them."}}]
  }
  execute if score $noAIAreaIgnorer nola.config matches 1 run {
    tellraw @s [{"text":"[ \u2714 ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/no_ai_area_ignorer/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Area ignorer","color":"gold","hoverEvent":{"action":"show_text","contents":"Armor stands renamed to ignore block the freezing of all entities near them."}}]
  }

  # lagClear
  execute if score $lagClear nola.config matches 0 run { 
    tellraw @s [{"text":"[ \u274c ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/lag_clear/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear","color":"gold","hoverEvent":{"action":"show_text","contents":"Deletes all unused entities in set time intervals.\n§7Performance Improvement: §6Medium"}}]
  }
  execute if score $lagClear nola.config matches 1 run {
    tellraw @s [{"text":"[ \u2714 ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/lag_clear/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear","color":"gold","hoverEvent":{"action":"show_text","contents":"Deletes all unused entities in set time intervals.\n§7Performance Improvement: §6Medium"}}]
  }
  # lagClearTime
  execute if score $lagClearTime nola.config matches 2 run {
    tellraw @s [{"text":"Lag clear time: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Time interval in which a lag clear is executed (in minutes)."}},{"text":"[ - ] ","color":"gray","hoverEvent":{"action":"show_text","contents":""}},{"score":{"name":"$lagClearTime","objective":"nola.config"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"dark_green","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/lag_clear_time/add"}}]
  }
  execute if score $lagClearTime nola.config matches 3.. run {
    tellraw @s [{"text":"Lag clear time: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Time interval in which a lag clear is executed (in minutes)."}},{"text":"[ - ] ","color":"dark_red","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/lag_clear_time/remove"}},{"score":{"name":"$lagClearTime","objective":"nola.config"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"dark_green","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/lag_clear_time/add"}}]
  }
  # lagClearMessages
  execute if score $lagClearMessages nola.config matches 0 run { 
    tellraw @s [{"text":"[ \u274c ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/lag_clear_messages/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear messages","color":"gold","hoverEvent":{"action":"show_text","contents":"Messages are sent to all players when a lag clear is about to be executed or has been executed."}}]
  }
  execute if score $lagClearMessages nola.config matches 1 run {
    tellraw @s [{"text":"[ \u2714 ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/lag_clear_messages/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Lag clear messages","color":"gold","hoverEvent":{"action":"show_text","contents":"Messages are sent to all players when a lag clear is about to be executed or has been executed."}}]
  }

  # xpMerge
  execute if score $xpMerge nola.config matches 0 run { 
    tellraw @s [{"text":"[ \u274c ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/xp_merge/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Merge xp orbs","color":"gold","hoverEvent":{"action":"show_text","contents":"Near xp orbs will be combined. (may affect Mendig enchantment)\n§7Performance Improvement: §6Medium"}}]
  }
  execute if score $xpMerge nola.config matches 1 run {
    tellraw @s [{"text":"[ \u2714 ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/xp_merge/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Merge xp orbs","color":"gold","hoverEvent":{"action":"show_text","contents":"Near xp orbs will be combined. (may affect Mendig enchantment)\n§7Performance Improvement: §6Medium"}}]
  }

  # itemDespawn
  execute if score $itemDespawn nola.config matches 0 run { 
    tellraw @s [{"text":"[ \u274c ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/item_despawn/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Custom item despawn","color":"gold","hoverEvent":{"action":"show_text","contents":"Items despawn after a specified time.\n§7Performance Improvement: §cLow"}}]
  }
  execute if score $itemDespawn nola.config matches 1 run {
    tellraw @s [{"text":"[ \u2714 ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/item_despawn/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Custom item despawn","color":"gold","hoverEvent":{"action":"show_text","contents":"Items despawn after a specified time.\n§7Performance Improvement: §cLow"}}]
  }
  # itemDespawnTime
  execute if score $itemDespawnTime nola.config matches 0 run {
    tellraw @s [{"text":"Item despawn time: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Time after items are deleted in minutes."}},{"text":"[ - ] ","color":"gray","hoverEvent":{"action":"show_text","contents":""}},{"score":{"name":"$itemDespawnTime","objective":"nola.config"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"dark_green","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/item_despawn_time/add"}}]
  }
  execute if score $itemDespawnTime nola.config matches 1..3 run {
    tellraw @s [{"text":"Item despawn time: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Time after items are deleted in minutes."}},{"text":"[ - ] ","color":"dark_red","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/item_despawn_time/remove"}},{"score":{"name":"$itemDespawnTime","objective":"nola.config"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"dark_green","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/item_despawn_time/add"}}]
  }
  execute if score $itemDespawnTime nola.config matches 4 run {
    tellraw @s [{"text":"Item despawn time: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Time after items are deleted in minutes."}},{"text":"[ - ] ","color":"dark_red","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/item_despawn_time/remove"}},{"score":{"name":"$itemDespawnTime","objective":"nola.config"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"gray","hoverEvent":{"action":"show_text","contents":""}}]
  }

  # antiTNTSpam
  execute if score $antiTNTSpam nola.config matches 0 run { 
    tellraw @s [{"text":"[ \u274c ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/anti_tnt_spam/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Anti TNT spam","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents ignition of large chunks tnt.\n§7Performance Improvement: §cLow"}}]
  }
  execute if score $antiTNTSpam nola.config matches 1 run {
    tellraw @s [{"text":"[ \u2714 ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/anti_tnt_spam/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Anti TNT spam","color":"gold","hoverEvent":{"action":"show_text","contents":"Prevents ignition of large chunks tnt.\n§7Performance Improvement: §cLow"}}]
  }

  # maxEntityCramming
  execute store result score .temp0 nola.data run gamerule maxEntityCramming
  execute if score .temp0 nola.data matches 0 run {
    tellraw @s [{"text":"Maximum entiys on one block: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of entities that can stand together on one block without taking damage.\n§7Performance Improvement: §6Medium"}},{"text":"[ - ] ","color":"gray","hoverEvent":{"action":"show_text","contents":""}},{"score":{"name":".temp0","objective":"nola.data"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"dark_green","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/max_entity_cramming/add"}}]
  }
  execute if score .temp0 nola.data matches 2..23 run {
    tellraw @s [{"text":"Maximum entiys on one block: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of entities that can stand together on one block without taking damage.\n§7Performance Improvement: §6Medium"}},{"text":"[ - ] ","color":"dark_red","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/max_entity_cramming/remove"}},{"score":{"name":".temp0","objective":"nola.data"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"dark_green","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/max_entity_cramming/add"}}]
  }
  execute if score .temp0 nola.data matches 24 run {
    tellraw @s [{"text":"Maximum entiys on one block: ","color":"gold","hoverEvent":{"action":"show_text","contents":"Maximum number of entities that can stand together on one block without taking damage.\n§7Performance Improvement: §6Medium"}},{"text":"[ - ] ","color":"dark_red","hoverEvent":{"action":"show_text","contents":""},"clickEvent": {"action": "run_command", "value": "/function nola:menu/buttons/max_entity_cramming/remove"}},{"score":{"name":".temp0","objective":"nola.data"},"color":"red","hoverEvent":{"action":"show_text","contents":""}},{"text":" [ + ]","color":"gray","hoverEvent":{"action":"show_text","contents":""}}]
  }

  # noCollision
  execute if score $noCollision nola.config matches 0 run { 
    tellraw @s [{"text":"[ \u274c ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/no_collision/on"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Disabled animal collision","color":"gold","hoverEvent":{"action":"show_text","contents":"Disables the collision of farm animals.\n§7Performance Improvement: §6Medium"}}]
  }
  execute if score $noCollision nola.config matches 1 run {
    tellraw @s [{"text":"[ \u2714 ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/buttons/no_collision/off"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":" Disabled animal collision","color":"gold","hoverEvent":{"action":"show_text","contents":"Disables the collision of farm animals.\n§7Performance Improvement: §6Medium"}}]
  }
  
  # Button to main menu
  tellraw @s {"text":""}
  tellraw @s {"text":"\u25c0 Back","color":"red","clickEvent":{"action":"run_command","value":"/function nola:menu/menu"},"hoverEvent":{"action":"show_text","contents":"*click*"}}
  tellraw @s {"text":""}
}


dir buttons {
  dir presets {
    function high {
      gamerule maxEntityCramming 4
      scoreboard players set $antiTNTSpam nola.config 1
      scoreboard players set $itemDespawn nola.config 1
      scoreboard players set $itemDespawnTime nola.config 2
      scoreboard players set $lagClear nola.config 1
      scoreboard players set $lagClearTime nola.config 20
      scoreboard players set %lagClearTime nola.data 20
      scoreboard players set $lagClearMessages nola.data 1
      scoreboard players set $noAI nola.config 1
      scoreboard players set $noAIDistance nola.config 42
      scoreboard players set $noAIAreaIgnorer nola.config 1
      scoreboard players set $noCollision nola.config 1
      scoreboard players set $xpMerge nola.config 1
      scoreboard players set $tpsTest nola.config 0

      function nola:menu/config
    }

    function default {
      gamerule maxEntityCramming 4
      scoreboard players set $antiTNTSpam nola.config 0
      scoreboard players set $itemDespawn nola.config 1
      scoreboard players set $itemDespawnTime nola.config 3
      scoreboard players set $lagClear nola.config 1
      scoreboard players set $lagClearTime nola.config 30
      scoreboard players set %lagClearTime nola.data 30
      scoreboard players set $lagClearMessages nola.data 1
      scoreboard players set $noAI nola.config 1
      scoreboard players set $noAIDistance nola.config 42
      scoreboard players set $noAIAreaIgnorer nola.config 1
      scoreboard players set $noCollision nola.config 1
      scoreboard players set $xpMerge nola.config 1
      scoreboard players set $tpsTest nola.config 0

      function nola:menu/config
    }

    function low {
      gamerule maxEntityCramming 8
      scoreboard players set $antiTNTSpam nola.config 0
      scoreboard players set $itemDespawn nola.config 1
      scoreboard players set $itemDespawnTime nola.config 3
      scoreboard players set $lagClear nola.config 0
      scoreboard players set $lagClearTime nola.config 30
      scoreboard players set %lagClearTime nola.data 30
      scoreboard players set $lagClearMessages nola.data 0
      scoreboard players set $noAI nola.config 1
      scoreboard players set $noAIDistance nola.config 64
      scoreboard players set $noAIAreaIgnorer nola.config 1
      scoreboard players set $noCollision nola.config 1
      scoreboard players set $xpMerge nola.config 0
      scoreboard players set $tpsTest nola.config 0

      function nola:menu/config
    }
  }

  dir lag_clear_messages {
    function on {
      scoreboard players set $lagClearMessages nola.config 1
      function nola:menu/config
    }
    function off {
      scoreboard players set $lagClearMessages nola.config 0
      function nola:menu/config
    }
  }

  dir max_entity_cramming {
    function add {
      scoreboard players add .temp0 nola.data 1
      function nola:menu/buttons/max_entity_cramming/set
      function nola:menu/config
    }
    function remove {
      scoreboard players remove .temp0 nola.data 1
      function nola:menu/buttons/max_entity_cramming/set
      function nola:menu/config
    }
    function set {
      LOOP(25,i) {
        execute if score .temp0 nola.data matches <%i%> run gamerule maxEntityCramming <%i%>
      }
    }
  }

  dir xp_merge {
    function on {
      scoreboard players set $xpMerge nola.config 1
      function nola:menu/config
    }
    function off {
      scoreboard players set $xpMerge nola.config 0
      function nola:menu/config
    }
  }

  dir no_collision {
    function on {
      scoreboard players set $noCollision nola.config 1
      function nola:menu/config
    }
    function off {
      scoreboard players set $noCollision nola.config 0
      function nola:menu/config
    }
  }

  dir no_ai_area_ignorer {
    function on {
      scoreboard players set $noAIAreaIgnorer nola.config 1
      function nola:menu/config
    }
    function off {
      scoreboard players set $noAIAreaIgnorer nola.config 0
      function nola:menu/config
    }
  }

  dir no_ai_distance {
    function add {
      scoreboard players add $noAIDistance nola.config 22
      function nola:menu/config
    }
    function remove {
      scoreboard players remove $noAIDistance nola.config 22
      function nola:menu/config
    }
  }

  dir no_ai {
    function on {
      scoreboard players set $noAI nola.config 1
      function nola:menu/config
    }
    function off {
      scoreboard players set $noAI nola.config 0
      function nola:menu/config
    }
  }

  dir lag_clear_time {
    function add {
      scoreboard players add $lagClearTime nola.config 1
      function nola:menu/config
    }
    function remove {
      scoreboard players remove $lagClearTime nola.config 1
      function nola:menu/config
    }
  }

  dir lag_clear {
    function on {
      scoreboard players set $lagClear nola.config 1
      function nola:menu/config
    }
    function off {
      scoreboard players set $lagClear nola.config 0
      function nola:menu/config
    }
  }

  dir item_despawn_time {
    function add {
      scoreboard players add $itemDespawnTime nola.config 1
      function nola:menu/config
    }
    function remove {
      scoreboard players remove $itemDespawnTime nola.config 1
      function nola:menu/config
    }
  }

  dir anti_tnt_spam {
    function on {
      scoreboard players set $antiTNTSpam nola.config 1
      function nola:menu/config
    }
    function off {
      scoreboard players set $antiTNTSpam nola.config 0
      function nola:menu/config
    }
  }

  dir item_despawn {
    function on {
      scoreboard players set $itemDespawn nola.config 1
      function nola:menu/config
    }
    function off {
      scoreboard players set $itemDespawn nola.config 0
      function nola:menu/config
    }
  }

  function clear_items {
    function nola:menu/click

    execute store result score .temp0 nola.data run kill @e[type=minecraft:item,tag=!global.ignore]
    tellraw @a[tag=!global.ignore] [{"text":"Deleted ","color":"gold"},{"score":{"name":".temp0","objective":"nola.data"},"color":"red"},{"text":" items","color":"gold"}]
  }
}

function uninstall {
  function nola:menu/click

  tellraw @s {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
  tellraw @s [{"text":"Do you really want to uninstall the No Lag Datapack?\n","color":"red"},{"text":"[ No ]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function nola:menu/menu"},"hoverEvent":{"action":"show_text","contents":"*click*"}},{"text":"  [ Yes ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function nola:core/uninstall/check"},"hoverEvent":{"action":"show_text","contents":"*click*"}}]
  tellraw @s {"text":""}
}

function command_feedback_true {
  gamerule sendCommandFeedback true
}

function click {
  playsound minecraft:ui.button.click master @s
  # Disables command fedback for a short time, so that no disturbing message is displayed
  gamerule sendCommandFeedback false
  schedule function nola:menu/command_feedback_true 1t replace
}
