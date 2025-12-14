import sys
sys.dont_write_bytecode = True

import os
import time
import json
import subprocess
import traceback
import channels

GAMEDIR = os.getcwd()
PIDS_FILE = os.path.join(GAMEDIR, "pids.json")

def print_green(text):
	print("\033[1;32m" + text + "\033[0m")

def print_magenta_prompt():
	print("\033[0;35m> ", end="", flush=True)

def start_process(exe):
	if os.name == "nt":
		exe += ".exe"
	return subprocess.Popen([exe], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

def try_start(name, cd, exe, pids, key=None):
	try:
		os.chdir(cd)
		proc = start_process(exe)
		entry = {"name": name, "pid": proc.pid}

		if key:
			pids.setdefault(key, []).append(entry)
		else:
			pids[name] = entry

		return True
	except Exception as e:
		print(f"> Failed to start {name}: {e}")
		traceback.print_exc()
		return False

def main():
	if len(sys.argv) == 1:
		print_green("> How many channels to start?")
		print_magenta_prompt()

		try:
			user_input = int(input())
		except ValueError:
			print("> Invalid number.")
			sys.exit(1)
	else:
		try:
			user_input = int(sys.argv[1])
		except ValueError:
			print("> Invalid argument.")
			sys.exit(1)

	pids = {}

	try:
		print_green("> Starting database...")
		try_start(
			"db",
			os.path.join(GAMEDIR, "channels", "db"),
			"./db",
			pids
		)
		time.sleep(1)

		print_green("> Starting auth...")
		try_start(
			"auth",
			os.path.join(GAMEDIR, "channels", "auth"),
			"./game_auth",
			pids
		)
		time.sleep(1)

		# Start Channel cores
		# 1. Create a dictionary of channel IDs guaranteed to be integers.
		# This ensures that string keys (e.g., '99') are correctly treated as numbers.
		int_channel_map = {int(k): v for k, v in channels.CHANNEL_MAP.items()}

		# 2. Determine which channels to start based on user input
		channels_to_start = set()
		for channel_id in int_channel_map.keys():
			
			# Add any channel that is within the user's limit (e.g., if user_input is 2, add 1 and 2)
			if user_input and channel_id <= user_input:
				channels_to_start.add(channel_id)
				
			# If there is no user input limit, start ALL channels
			elif not user_input:
				channels_to_start.add(channel_id)

		# 3. GUARANTEE Channel 99 is included, regardless of the input limit
		if 99 in int_channel_map:
			channels_to_start.add(99)

		# 4. Sort the list to ensure correct startup order (1, 2, ..., 99)
		final_start_order = sorted(list(channels_to_start))

		# 5. Iterate through the final, clean list
		for channel_id in final_start_order:
			cores = int_channel_map[channel_id] # Retrieve cores using the integer ID
			print_green(f"> Starting CH{channel_id}:")
			for core_id, maps in cores.items():
				name = f"channel{channel_id}_core{core_id}"
				print_green(f"\t> {name}")
				try_start(
					name,
					os.path.join(GAMEDIR, "channels", f"channel{channel_id}", f"core{core_id}"),
					f"./{name}",
					pids,
					"channel"
				)
				time.sleep(1)
			print()

		print_green("> The server is running!")

	except Exception as e:
		print(f"> Unexpected error: {e}")
		traceback.print_exc()

	finally:
		os.chdir(GAMEDIR)
		try:
			with open(PIDS_FILE, "w") as f:
				json.dump(pids, f, indent=2)
			print_green(f"> PID file written to {PIDS_FILE}")

		except Exception as e:
			print(f"> Failed to write PID file: {e}")
			traceback.print_exc()

if __name__ == "__main__":
	main()