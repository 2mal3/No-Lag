
advancement root {
  "display": {
    "title": "Installed Datapacks",
    "description": "",
    "icon": {
      "item": "minecraft:knowledge_book"
    },
    "background": "minecraft:textures/block/gray_concrete.png",
    "show_toast": false,
    "announce_to_chat": false
},
"criteria": {
    "trigger": {
      "trigger": "minecraft:tick"
    }
  }
}

advancement 2mal3 {
  "display": {
    "title": "2mal3",
    "description": "",
    "icon": {
      "item": "minecraft:player_head",
      "nbt": "{SkullOwner: \"2mal3\"}"
    },
    "show_toast": false,
    "announce_to_chat": false
  },
  "parent": "global:root",
  "criteria": {
    "trigger": {
      "trigger": "minecraft:tick"
    }
  }
}


