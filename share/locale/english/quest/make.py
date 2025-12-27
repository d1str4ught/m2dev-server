import sys
sys.dont_write_bytecode = True

from pathlib import Path
import shutil
import subprocess
import os
import pre_qc


def _clear_directory(dir_path: Path) -> None:
	for item in dir_path.iterdir():
		if item.is_dir():
			shutil.rmtree(item)
		else:
			item.unlink(missing_ok=True)


def main() -> None:
	script_dir = Path(__file__).resolve().parent

	object_dir = script_dir / "object"
	if object_dir.exists():
		_clear_directory(object_dir)
	else:
		object_dir.mkdir(parents=True, exist_ok=True)

	pre_qc_dir = script_dir / "pre_qc"
	if pre_qc_dir.exists():
		_clear_directory(pre_qc_dir)
	else:
		pre_qc_dir.mkdir(parents=True, exist_ok=True)

	if os.name != "nt":
		# 1. Check if the 'quest' group actually exists in FreeBSD
		group_exists = False
		try:
			import grp
			grp.getgrnam('quest')
			group_exists = True
		except KeyError:
			print("Warning: Group 'quest' not found. Skipping chgrp.")

		if group_exists:
			try:
				subprocess.run(["chgrp", "quest", str(object_dir)], check = True)
			except subprocess.CalledProcessError:
				print("Failed to change group ownership.")

		# 2. Set Permissions (This will work even if chgrp failed)
		# Using -R inside subprocess is fine
		subprocess.run(["chmod", "-R", "770", str(object_dir)], check = True)

	qc_exe = script_dir / ("qc.exe" if os.name == "nt" else "qc")

	locale_list_path = script_dir / "locale_list"

	if not locale_list_path.exists():
		raise FileNotFoundError(f"locale_list nicht gefunden: {locale_list_path}")

	with locale_list_path.open("r", encoding="utf-8", errors="ignore") as file:
		for raw_line in file:
			line = raw_line.strip()
			if not line or line.startswith("#"):
				continue

			print(f"Compiling {line}...")

			r = pre_qc.run(line)

			if r:
				filename = pre_qc_dir / line
			else:
				filename = script_dir / line

			subprocess.run([str(qc_exe), str(filename)], check=True)

if __name__ == "__main__":
	main()
