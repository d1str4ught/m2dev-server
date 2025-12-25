# Server Repository

This repository contains the core server files and configurations. It includes fixes for database performance, quest logic, and crucial setup scripts.

---

## 📋 Changelog

### 🐛 Bug Fixes
* **Install Script:** The install script has been updated to only create and link the package folder in non-Windows environments.
* **Dungeon Party Logic:** Fixed an issue where the same message would popup to all affected parties when a leader tried to kick a player or a player tried to leave a team while inside a dungeon. Includes several other update message optimizations and dungeon logic improvements regarding party kicking/leaving.

### ⬆️ Feature Improvements
* **Job-Specific Stat Resets to Initial values:** Individual stats reset scrolls (Items 71103, 71104, 71105, 71106) now recover stats to their initial values based on character job instead of defaulting to 1, returning the appropriate points. Translations now dynamically display the selected stat's value.
