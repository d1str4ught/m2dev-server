# Server Repository

This repository contains the core server files and configurations. It includes fixes for database performance, quest logic, and crucial setup scripts.

---

## 📋 Changelog

### 🐛 Bug Fixes
* **Frostbeard synching fixed:** The monster now runs and attacks without issues
* **Item drops updated:** Item drops for Razador and Nemere bosses have been added/updated fully official-like
* **Missing Szel group added:** Missing Szel group for Nemere's Watchtower has been added
* **Experience points from chests:** Fixed a bug where experience points were being replaced by Experience Rings when opening chests
* **Gold from chests:** Fixed a bug where Gold was being replaced by a Gold inventory item that had no value when opening chests

### ⬆️ Feature Improvements
* **Nemere's Watchtower dungeon added:** The Nemere's Watchtower dungeon has been added almost fully translated for all locales, **fully official-like**:
  * **Please run channels.py and then install.py to install the new map**
  * Map index 352 (in core 2)
  * Nemere is being included as a valid target for the Collect Quest Lv. 90
  * Safeguards added to prevent mounting inside the dungeon in horse_summon.quest and ride.quest
  * The full dungeon quest, official-like, with the correct cooldown times, true per-hit conditional immunity (MISS hits) for targeted monsters and a lot more helping functions:
    * `d.regen_file_with_immunity`: Spawn all monster/groups from a dungeon folder's regen.txt file with conditional immunity embedded from spawn
    * `d.regen_file_with_vids`: The VIDs of all spawned monsters/groups from a dungeon folder's regen.txt file are being returned to Lua for further manipulation
    * `d.spawn_group_with_immunity`: Spawn a group of monsters via its ID with conditional immunity embedded from spawn
    * `d.spawn_group_with_vids`: The VIDs of all monsters from the group spawned are being returned to Lua for further manipulation
    * `d.spawn_mob_with_immunity`: Spawn a single monster with conditional immunity embedded from spawn
    * `npc.add_damage_immunity_condition`: Add a damage immunity condition to an already spawned monster
    * `npc.clear_damage_immunity_conditions`: Clear all damage immunity from a monster so it can take damage normally again
    * `npc.is_damage_immune`: Check if a mob has damage immunity using its VID
    * `npc.set_damage_immunity`: Set damage immunity to a monster using its VID
    * `npc.set_damage_immunity_with_conditions`: Set conditional damage immunity to a monster using its VID
    * **Immunity vs Conditional immunity**: When a monster is immune to damage all hits are returning as MISS and it cannot be poisoned, burned, slowed or stunned. A condition is a rule that when applied, the monster's immunity is being ignored (for example, a mob is immune to damage unless the attacker is a Ninja - job 1). Multiple conditions are possible.
  * Added the data/dungeon folder with all the regen information for all stages
  * Added all translations strings for all languages (some translations may be incomplete, look for English-translated strings in translate_XX.lua/locale_string_XX.lua)
* **Dead/Wounded Soldier NPCs added:** Added Dead/Wounded Soldier NPCs in Fireland and Snow Mountain as well as the Wounded Soldier NPC in Nemere's Watchtower (stage 6)
* **Dungeon Entry Men updated:** Updated the Dungeon Entry Men's rotations and added correctly rotated Barricade NPCs around them, outside Nemere's Watchtower and Purgatory dungeon entrances
