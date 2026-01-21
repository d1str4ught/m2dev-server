import sys
import os
import builtins

# --------------------------------------------------
# FORCE UTF-8 FOR ALL FILE WRITES
# --------------------------------------------------
_original_open = builtins.open

def utf8_open(file, mode="r", buffering=-1, encoding=None,
              errors=None, newline=None, closefd=True, opener=None):
	if "w" in mode and encoding is None:
		encoding = "utf-8"
	return _original_open(
		file, mode, buffering, encoding, errors, newline, closefd, opener
	)

builtins.open = utf8_open
# --------------------------------------------------

sys.dont_write_bytecode = True

from pathlib import Path
import shutil
import subprocess
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
		group_exists = False
		try:
			import grp
			grp.getgrnam("quest")
			group_exists = True
		except KeyError:
			print("Warning: Group 'quest' not found. Skipping chgrp.")

		if group_exists:
			try:
				subprocess.run(["chgrp", "quest", str(object_dir)], check=True)
			except subprocess.CalledProcessError:
				print("Failed to change group ownership.")

		subprocess.run(["chmod", "-R", "770", str(object_dir)], check=True)

	qc_exe = script_dir / ("qc.exe" if os.name == "nt" else "qc")

	locale_list_path = script_dir / "locale_list"
	if not locale_list_path.exists():
		raise FileNotFoundError(f"locale_list nicht gefunden: {locale_list_path}")

	with _original_open(locale_list_path, "r", encoding="utf-8", errors="ignore") as file:
		for raw_line in file:
			line = raw_line.strip()
			if not line or line.startswith("#"):
				continue

			print(f"Compiling {line}...")

			r = pre_qc.run(line)

			filename = (pre_qc_dir if r else script_dir) / line
			subprocess.run([str(qc_exe), str(filename)], check=True)


if __name__ == "__main__":
	main()
