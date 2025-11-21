#!/usr/bin/env python3

import os
import sys
import shutil # Import shutil for recursive directory deletion

def print_green(text):
	print("\033[1;32m" + text + "\033[0m")

def print_magenta_prompt():
	print("\033[0;35m> ", end="", flush=True)

def main():
	"""
	Cleans up specified files from the game server's channels directory.
	"""
	# List of files to remove, including file extensions.
	FILES_TO_CLEAN = ['.core', 'syserr.log', 'syslog.log', '.txt', 'pid', 'stdout']
	
	# 🌟 NEW: File in the current directory to remove
	ROOT_FILES_TO_CLEAN = ['pids.json']

	# The base directory to start the cleanup from.
	# This assumes the script is run from the root of the game installation.
	root_dir = os.getcwd() # The script's execution directory
	base_dir = os.path.join(root_dir, 'channels')
	
	print_green("Starting cleanup...")

	# --- 1. Clean up files in the root directory (where 'channels' is) ---
	print(f"Scanning '{root_dir}' for root files...")
	for filename in ROOT_FILES_TO_CLEAN:
		file_path = os.path.join(root_dir, filename)

		if os.path.exists(file_path):
			try:
				os.remove(file_path)
				print(f" - Removed '{filename}' from root.")
			except OSError as e:
				print(f" - Error removing '{filename}': {e}")

	# --- 2. Clean up 'channels' directory and its subdirectories ---
	print_green("Starting cleanup in '" + base_dir + "'...")

	if not os.path.exists(base_dir):
		print(f"Error: Directory '{base_dir}' not found.")
		sys.exit(1)

	# Use os.walk to recursively search for files.
	for root, dirs, files in os.walk(base_dir, topdown=False):
		# Determine if the current directory is a target for cleanup.
		is_target_dir = False

		if os.path.basename(root) in ['auth', 'db']:
			is_target_dir = True
		elif os.path.basename(os.path.dirname(root)).startswith('channel') and os.path.basename(root).startswith('core'):
			is_target_dir = True

		if is_target_dir:
			print(f"\nScanning '{os.path.relpath(root, base_dir)}'...")

			# 🌟 NEW: Empty the 'log' subdirectory if it exists
			log_dir_path = os.path.join(root, 'log')

			if os.path.exists(log_dir_path) and os.path.isdir(log_dir_path):
				print(f"\nScanning '{os.path.relpath(root, base_dir)}'...")
				print(f" - Cleaning 'log' directory in '{os.path.relpath(root, base_dir)}'")
				
				try:
					# Iterate over all files and directories inside the 'log' folder
					for item in os.listdir(log_dir_path):
						item_path = os.path.join(log_dir_path, item)
						
						if os.path.isdir(item_path):
							# If it's a directory, recursively delete it
							shutil.rmtree(item_path)
							print(f"   - Removed directory: '{item}'")
						else:
							# If it's a file, delete the file
							os.remove(item_path)
							print(f"   - Removed file: '{item}'")

				except OSError as e:
					print(f" - Error cleaning 'log' directory at '{os.path.relpath(log_dir_path, base_dir)}': {e}")

			for filename in files:
				for file_to_clean in FILES_TO_CLEAN:
					if filename.endswith(file_to_clean):
						file_path = os.path.join(root, filename)
						
						try:
							os.remove(file_path)
							print(f"  - Removed '{os.path.relpath(file_path, base_dir)}'")
						except OSError as e:
							print(f"  - Error removing '{file_path}': {e}")
							
	print_green("\nCleanup complete.")

if __name__ == "__main__":
	try:
		main()
	finally:
		print("\033[0m", end="", flush=True)
