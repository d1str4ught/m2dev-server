#!/usr/bin/env python3

import os
import sys

# Define the root directory of your game.
# Change this line to your desired path.
GAME_ROOT_DIR = os.getcwd()

# --- Derived Paths (Do not change below this line) ---
DB_ROOT_DIR = '/var/db/mysql'
GAME_BIN_DIR = os.path.join(GAME_ROOT_DIR, 'share', 'bin')

def set_permissions(path: str, permission_code: int) -> None:
	"""
	Sets the specified permission code on a given file.
	"""
	if os.name == "nt":
		pass
	else:
		try:
			os.chmod(path, permission_code)
			print(f"  - Changed permissions on: {path}")
		except OSError as e:
			print(f"  - ERROR: Failed to change permissions on {path}: {e}")

def main():
	"""
	Main function to set permissions on specified files and directories.
	"""# Only attempt to set permissions on Unix-like systems, not Windows (os.name == "nt")
	if os.name == "nt":
		print(f"Skipped setting Unix permissions on Windows for: {os.path.basename(path)}.")
	else:
	# 777 in octal
	permission_code = 0o777 

	# --- Section 1: Set permissions for files inside /var/db/mysql subdirectories ---
	print(f"Setting permissions on files within subdirectories of '{DB_ROOT_DIR}'...")
	if not os.path.isdir(DB_ROOT_DIR):
		print(f"ERROR: '{DB_ROOT_DIR}' not found. Skipping.")
	else:
		# Use os.walk to go through all directories and files.
		for root, dirs, files in os.walk(DB_ROOT_DIR):
			# Check if the current directory is not the root itself
			if root != DB_ROOT_DIR:
				for file in files:
					file_path = os.path.join(root, file)
					set_permissions(file_path, permission_code)

	# --- Section 2: Set permissions for game and db binaries ---
	print(f"\nSetting permissions on 'game' and 'db' binaries in '{GAME_BIN_DIR}'...")
	binaries_to_set = ['game', 'db']
	if not os.path.isdir(GAME_BIN_DIR):
		print(f"ERROR: '{GAME_BIN_DIR}' not found. Skipping.")
	else:
		for binary in binaries_to_set:
			binary_path = os.path.join(GAME_BIN_DIR, binary)
			if os.path.isfile(binary_path):
				set_permissions(binary_path, permission_code)
			else:
				print(f"  - Skipping: '{binary}' not found at '{binary_path}'")

	print("\nPermission changes complete.")

if __name__ == "__main__":
	main()