# Server Repository

This repository contains the core server files and configurations. It includes fixes for database performance, quest logic, and crucial setup scripts.

---

## ✨ Key Updates and Fixes

The following changes have been implemented to improve stability, performance, and development workflow:

### ⚙️ Initial Setup & Build Process

* **NEW Script: `clear.py`:** Added an up-to-date script for comprehensive cleanup of log, PID, and temporary files across channels and the database.
* **NEW Script: `perms.py`:** Added a script to automatically assign necessary permissions to all compiled binaries (`game`, `db` and `qc`).
    * ⚠️ **Action Required:** The `perms.py` script uses `os.getcwd()` to determine the root path. **You must run this script from your game's root directory (e.g., `/usr/home/game`) for it to function correctly.**
* **Fix: `install.py`:** Corrected the script to properly create the `data/package` folder and ensure it is symbolically linked across all channels.
* **Configuration: `conf/game.txt`:** Changed the maximum character level supported in the server configuration to **120**.

### 🐍 Core Logic & Quest Engine

* **Fix: `make.py` (Quest Compilation):** Fixed a critical logic bug (missing `else` assignment) in `share/locale/[xxx]/quest/make.py` that was causing compiled quests and dialogs to be unresponsive in-game.
* **Fix: `pre_qc.py` (Quest Pre-processing):** Resolved a syntax error in `share/locale/[xxx]/quest/pre_qc.py` by specifying the correct encoding option when reading files.

### 💾 Database Performance & Integrity

* **Performance:** Replaced the default database engine on most tables with either **Aria** (for high-read tables like `item_proto`, `mob_proto`) or **InnoDB** (for high-write tables like `item`, `affect`).
    * *Note: Most `log` tables retain the default **MyISAM** engine due to compatibility requirements.*
* **Integrity Fix:** Corrected a syntax error in the `item_proto` section of `sql/player.sql` where a single quote (`'`) was missing from the "Bambi Seal" item insert query.
* **Bug fix:** A fix was applied to the `MOV_SPEED` value for skill 19 in the `skill_proto` table to prevent characters from becoming immobile during the effect.
* **Updates:** All `.sql` files (`account.sql`, `common.sql`, `log.sql`, `player.sql`) are updated with the new engine and functioning query settings.