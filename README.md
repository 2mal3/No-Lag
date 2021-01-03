# No-Lag-Datapack v2.0.2
by 2mal3

This datapack is designed to minimize the lag in the Minecraft world in a efficient way to ensure a good gaming experience.             
To achieve this, this datapack uses over 6 different and efficient methods, unlike similar datapacks that use only a few methods.       
These can be easily configured via the in game gui, which provides additional information and special actions.                          
Thereby the datapack was designed with performance in mind, so that it has almost no effect on the game performance itself.             

By default, all farm animals, bosses, decorative entities, pets, near entities and entities with names are not deleted. However, all are frozen if they are too far away from a player, except if they are an end boss or have the name **ignore**.

All settings and actions can be done via the in game gui. To open it you just have to type command `function #2mal3:nola/menu` into the chat (only works with command permissions).

## Features:
- Over 6 different methods to reduce lag
- Does not affect important entitys
- Simple in-game gui with many settings
- Additional information about the world
- Easy testing for new updates
- Does not create lag itself

## Methods to reduce lag:
- Entities that are too far away from a player are frozen
- In certain intervals all unimportant entitys are deleted
- Multiple Xp Orbs are combined
- Collision of farm animals are deactivated
- Items despawn earlier
- Les entitys can stand together on one block

## Limitations:
This datapack reduces the lag percentage. This means that it is most effective when you already have heavy lag. If there are only few lag, the datapack is less useful and you should consider if you need it at all.                                                       
In general this datapack is only suitable for survival worlds and only improves the performance of world / server. It does not improve the performance of mods, shaders, datapacks and FPS.                                                                                 
It is tried to make this datapack compatible with other datapacks, but it cannot be guaranteed that problems can occur in combination with other datapacks.

## Technical Information:
In general no entitys with the tag global.ignore_kill are deleted and entitys with the tag global.ignore are not affected.              
The datapack collects some information about the world and stores it.                                                                   
- _$nola.players_ in _nola.data_: Number of players in the world
- _$nola.entitys_ in _nola.data_: Number of total loaded entitys
- _$nola.frozen_entitys_ in _nola.data_: Number of all loaded frozen entitys
- _$nola.unneeded_entitys_ in _nola.data_: Number of unused entitys, which are deleted at the next lag clear.

***