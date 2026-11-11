### Changed

- Migrated to a plain vanilla Java datapack structure for Minecraft 26.3 (data pack version 121).
- Removed the mc-build source and build dependency; release archives now package the datapack directly.

### Previous release changes

- updated to Minecraft 1.20
- removed glow squids from farm animals -> now affected by lag clears
- improved performance of lag clears

### Fixed

- broken automatic updates between v3.0.3 - v3.1.1

### v3.1.6

- Added an on-demand entity diagnostics screen with count warnings and cleanup totals. Warnings never trigger automatic removals.
- Added optional hostile-only entity freezing and optional cleanup for old arrows and tridents.
- Reduced recurring entity scans by targeting relevant entity types and running the broad freezing scan every five seconds.
- Added migration support from v3.1.5 to v3.1.6.
