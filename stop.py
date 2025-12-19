import os
import sys
import time
import json
import subprocess
import signal
import traceback

GAMEDIR = os.getcwd()
PIDS_FILE = os.path.join(GAMEDIR, "pids.json")

def print_green(text):
	print("\033[1;32m" + text + "\033[0m")

def stop_pid(pid, name):
	try:
		if os.name == "nt":
			subprocess.call(["taskkill", "/F", "/PID", str(pid)],
			stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
		else:
			os.kill(pid, signal.SIGTERM)
	except ProcessLookupError:
		print(f"> Process {pid} ({name}) not found, skipping.")
	except Exception as e:
		print(f"> Error stopping {name} (PID {pid}): {e}")
		traceback.print_exc()

def kill_by_name(name):
	try:
		if os.name == "nt":
			subprocess.call(["taskkill", "/F", "/IM", f"{name}.exe"],
			stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
		else:
			subprocess.call(["pkill", "-1", name],
			stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
	except Exception as e:
		print(f"> Error killing {name} by name: {e}")
		traceback.print_exc()

def main():
	try:
		with open(PIDS_FILE, "r") as f:
			entries = json.load(f)
	except Exception as e:
		print(f"> Could not read PID file: {e}")
		traceback.print_exc()
		sys.exit(1)
		
	for entry in entries.get("channel", []):
		name = entry.get("name")
		pid  = entry.get("pid")
		print_green(f"> Stopping {name} (PID {pid})...")
		stop_pid(pid, name)
		time.sleep(0.2)
		
	auth = entries.get("auth")
	if auth:
		print_green(f"> Stopping {auth.get('name')} (PID {auth.get('pid')})...")
		stop_pid(auth.get('pid'), auth.get('name'))
		time.sleep(1)
		
	db = entries.get("db")
	if db:
		print_green(f"> Stopping {db.get('name')} (PID {db.get('pid')})...")
		stop_pid(db.get('pid'), db.get('name'))
		
	print_green("> All requested processes signaled.")

if __name__ == "__main__":
	main()