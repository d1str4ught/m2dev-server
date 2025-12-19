# Server Repository

This repository contains the core server files and configurations. It includes fixes for database performance, quest logic, and crucial setup scripts.

---

## Changelog 📋

### 🐛 Bug Fixes & Stability
* **Configuration:** Fixed a syntax typo found in `perms.py`, ensuring correct configuration parsing.
* **SQL:** Corrected a syntax error discovered in `sql/account.sql`, improving database initialization reliability.

### ⬆️ Feature & System Improvements
* **Database Structure:** Updated the data type for `hp` and `sp` fields in the `player.player` table from `smallint(4)` to the more robust `int(11)` for compatibility with the source code (`common/tables.h`). **(Note: Existing projects are highly recommended to update their table structure manually.)**
* **Deployment Scripts:** The `start.py` script logic has been updated to guarantee that **channel 99** is activated, regardless of the total number of channels specified for the start-up sequence.
* **Channel Support:** Increased the maximum supported channel count to **4** channels in `channels.py`. Run `install.py` to apply.
* **Localization (`locale_strings`):** Added full support for new chat messages from the **Messenger System** updates from the source code. (English and Greek locales only)
* **Charset compatibility:** In `special_item_group.txt`, the Korean string "경험치" has been converted to "exp" for better compatibility with the warning fixes in the source code (compatible with older source versions, the Korean string is no longer supported after the latest source updates).
* **.gitignore file**: Ignoring all files and directories ending in `_BAK` or `.BAK` (case-insensitive)