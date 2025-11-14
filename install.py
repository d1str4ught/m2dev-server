import sys
sys.dont_write_bytecode = True

import os
import shutil
import subprocess
import channels

GAMEDIR = os.getcwd()

def write_lines_to_files(path, lines):
	with open(path, "w") as f:
		for line in lines:
			f.write(line)
			f.write("\n")
			
def generate_auth_config(path, port, p2p_port):
	file_content = [
		"HOSTNAME: auth",
		"CHANNEL: 1",
		f"PORT: {port}",
		f"P2P_PORT: {p2p_port}",
		"AUTH_SERVER: master",
	]
	write_lines_to_files(os.path.join(path, "CONFIG"), file_content)

def generate_game_config(path, channel, core, map_allow):
	port = 11000 + (channel * 10 + core)
	p2p_port = 12000 + (channel * 10 + core)
	file_content = [
		f"HOSTNAME: channel{channel}_{core}",
		f"CHANNEL: {channel}",
		f"PORT: {port}",
		f"P2P_PORT: {p2p_port}",
		f"MAP_ALLOW: {map_allow}",
	]
	write_lines_to_files(os.path.join(path, "CONFIG"), file_content)

# Cross-platform colored output
def print_green(text):
	if os.name == "nt":
		os.system("")  # Enable ANSI escape characters on Windows
	print("\033[1;32m" + text + "\033[0m")

def setup_links_db(target_dir):
	os.chdir(target_dir)
	os.mkdir("log")
	try_symlink(os.path.join(GAMEDIR, "share", "conf"), "conf", is_dir=True)
	try_symlink(os.path.join(GAMEDIR, "share", "data"), "data", is_dir=True)
	try_symlink(os.path.join(GAMEDIR, "share", "locale"), "locale", is_dir=True)
	try_symlink(os.path.join(GAMEDIR, "share", "bin", "db"), "db", is_dir=False)
	
def setup_links_game(target_dir, name):
	os.chdir(target_dir)
	os.mkdir("log")
	try_symlink(os.path.join(GAMEDIR, "share", "conf"), "conf", is_dir=True)
	try_symlink(os.path.join(GAMEDIR, "share", "data"), "data", is_dir=True)
	try_symlink(os.path.join(GAMEDIR, "share", "locale"), "locale", is_dir=True)
	try_symlink(os.path.join(GAMEDIR, "share", "mark"), "mark", is_dir=True)
	try_symlink(os.path.join(GAMEDIR, "share", "package"), "package", is_dir=True)
	try_symlink(os.path.join(GAMEDIR, "share", "bin", "game"), name, is_dir=False)

# Helper function to create symlinks cross-platform
def try_symlink(target, link_name, is_dir):
	try:
		if os.path.lexists(link_name):
			os.remove(link_name)
		
		if os.name == "nt":  # Windows
			if is_dir:
				# For directories, create junction
				import subprocess
				subprocess.run(["mklink", "/J", link_name, target], shell=True, check=True)
			else:
				# For files, copy instead of symlink
				target += ".exe"
				link_name += ".exe"
				shutil.copy2(target, link_name)
		else:  # Unix-like systems
			os.symlink(target, link_name, target_is_directory=is_dir)
	except (OSError, subprocess.CalledProcessError) as e:
		print(f"> Failed to create link: {link_name} -> {target} ({e})")

## Clearing Up Old Files
channels_dir = os.path.join(GAMEDIR, "channels")
if os.path.exists(channels_dir):
	print_green("> Clearing up channels...")
	shutil.rmtree(channels_dir)

package_dir = os.path.join(GAMEDIR, "share", "package")
if not os.path.exists(package_dir):
	os.makedirs(package_dir)
## DB Setup
print_green("> Setting up environment for the DB Cache...")
db_dir = os.path.join(GAMEDIR, "channels", "db")
os.makedirs(db_dir)
setup_links_db(db_dir)

# Auth Setup
print_green("> Setting up environment for AUTH...")
auth_dir = os.path.join(GAMEDIR, "channels", "auth")
os.makedirs(auth_dir)
setup_links_game(auth_dir, "game_auth")
generate_auth_config(auth_dir, 11000, 12000)

## Game Channel Setup

for channel_id, cores in channels.CHANNEL_MAP.items():
	print_green(f"> Setting up environment for CH{channel_id}...")
	for core_id, maps in cores.items():
		core_dir = os.path.join(GAMEDIR, "channels", f"channel{channel_id}", f"core{core_id}")
		os.makedirs(core_dir)
		setup_links_game(core_dir, f"channel{channel_id}_core{core_id}")
		generate_game_config(core_dir, channel_id, core_id, maps)

print_green("> We are all done!")
os.chdir(GAMEDIR)
