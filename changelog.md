
Update v2.4.4 (2.7.2021)
## Update v2.4.4 (2.7.2021)

Again an update without new features, but many small improvements and bug fixes.
With the update, many bugs when uninstalling were finally fixed and also the performance of the entity freeze improved again. In addition, hopefully all spelling errors regarding entities have been fixed and items have been excluded from lag clear. I also decided to remove the update check from the datapack, because it was not used according to the statistics and it makes me too much work.

### Added:
- Test if command blocks are enabled on the server when uninstalling

### Changend:
- Performance of the entity freezing module improved
- Items are no longer deleted from lag clears
- Spelling mistake fixed
- [Internal] Debug messages improved

### Bugs fixed:
- After uninstalling, the unfreeze command blocks spam the chat full.
- After uninstalling and restarting the world, frozen entities were no longer unfrozen.

### Removed:
- Update check, because of very low usage

----------------------------------------------------------------

## Update v2.4.3 (17.6.2021)

Just a small update that only improves and fixes a few things and adds an option to disable lag clear messages.

### Added:
- Option to disable lag clear messages
- Good reviews from other users

### Changed:
- Datapack description improved
- Datapack performance improved
- [Internal] Lantern Load library updated

### Bug fixes:
- Datapack was not fully ready for 1.17 yet
- Bees were deleted at lag clears

----------------------------------------------------------------

## Update v2.4.2 (22.5.2021)

This update does not bring any big changes, but now the datapack should be compatible with the new minecraft version. 

### Added:
- Armor stands and item frames without items are now also deleted from lag clears.

### Bug fixes:
- The Tps test did not work properly.
- The tps test was not stopped during uninstallation.

----------------------------------------------------------------

## Update v2.4.1 (18.4.2021)

This update only fixes a few bugs in the datapack. However, i would recommend everyone to install the update.

### Bug fixes:
- Due to a bug in Minecraft, the inventory of villagers was duplicated when they were frozen or unfrozen. Unfortunately, this bug fix means that villagers will no longer be frozen.
- When freezing of entities was disabled, no frozen entities were unfrozen.
- When entity freezing was enabled, entities were not unfrozen under certain conditions.
- When uninstalling the datapack, only loaded and frozen entities were unfrozen.
- A wrong warn message was sent with a wrong server software.

----------------------------------------------------------------

## Update v2.4.0 (27.3.2021)

For some time now a somewhat larger update with new features.
Besides a few improvements and bug fixes this update brings an automatic TPS test. This monitors the TPS all the time in the background, so you always know how much it lags.
In addition, the number of deleted entities is now also written in the message of a lag clear.

Due to some internal code changes, all settings are unfortunately reset to the beginning. 

### Added:
- Optional auto tps test
- The number of deleted entities is written into the message when a lag clear is executed

### Changed:
- Stability improved
- Internal code variable changes

### Bug fixes:
- Entities that were once classified as too close to kill were never killed for distance after that
- Entities without names were classified as not to be deleted

----------------------------------------------------------------

## Update v2.3.0 (16.3.2021)

Again, just a minor update. It only fixes a few bugs and adds functions for better error detection.

### Added:
- Automatic detection of incorrect versions
- Function for easy debugging

### Bug fixes:
- Installing the datapack does not work properly
- The area ignorer option has led to lag spikes every second
- When uninstalling the Datapack not all entity tags were removed

----------------------------------------------------------------

## Update v2.2.1 (15.2.2021)

This is just a small update that mainly fixes the spelling error that entities were written as entities.

### Changed:
- Improved performace during inititialization

### Bug fixes:
- In many places in the datapack entities were used instead of entities
- When simply replacing the datapack file after a datapack update resulted in no new things were created 

----------------------------------------------------------------

## Update v2.2.0 (14.2.2021)

This update mainly brings a new method to reduce lag. If too many entities of the same type are too close to each other, all other entities of the species will be deleted. In short: No more laggy mass farming!
Also the datapack menu with the config has been improved and more options for the range of entity freezing have been added.

### Added:
- Method to reduce lag: Entity that have too many entity of the same type in the near will be deleted
- More options for the distance of entity freeze (Now additionally 42 and 72)
- Important links in the datapack menu
- Second page in the datapack config

### Changed:
- Better icons in the datapack menu
- Datapack menu improved
- Internal entity types lists increased and extended
- Small internal code embellishments

### Bug fixes:
- In the datapack config the current value of the max entity craming was not displayed
- At the setting to distance of entity freezing could be set only 64

----------------------------------------------------------------

## Update v2.1.0 (31.1.2021)

### Added:
- Ability to mass-ignore entities in certain areas
- Icons in the datapack menu and config

### Changed:
- Different order of actions in the datapack menu

### Bug fixes:
- Items with the global.ignore.kill were killed
- entities ignored by the datapack were frozen

----------------------------------------------------------------

## Update v2.0.2 (3.1.2021)

### Bug fixes:
- Entities with names were sometimes deleted during lag clears

----------------------------------------------------------------

## Update v2.0.1 (15.12.2020)

### Changed:
- Different reloading of the datapack for better compatibility with other datapacks
- Better comments

### Bug fixes:
- Cats as pets were not ignored
- When disabling entity freezing, frozen entities were not reactivated
- The datapack was not deactivated during uninstallation

----------------------------------------------------------------

## Update v2.0.0 (5.12.2020)

### Added:
- In-game gui
    > Information about the world / server
    > Easy configuration of the datapack
- Ignore important entities
- Update check (in the in-game gui)
- Setting that the lag clear is automatically turned off overnight
- Experimental debug mode

### Changed:
- Completely new and 20x more efficient code
- Improved compatibility with other Datapacks 
- Improved Xp combine
- Less annoying lag clear messages

### Removed:
- Methods that are triggered by too much lag
- Limitation for ignited tnts 
- Language pack

----------------------------------------------------------------
