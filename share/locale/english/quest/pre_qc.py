# -*- coding: cp949 -*-
# Literally, ¡°pre qc.¡±
# In our quest language, there are only local variables.
# You cannot use global variables that span state, when, or function.
# The use of global variables is impossible due to the language structure and is meaningless.
# However, the use of global constants is absolutely necessary in the quest view.
# Until now, to mimic global constants, we created a new table every time using functions like setting().
# This is very inefficient.
# So, just like C¡¯s preprocessor, we made a ¡°pre qc¡± to allow global constants.
# If you run pre_qc.py before compiling a quest into qc,
# pre_qc.py processes define statements and saves the results into pre_qc/filename.

import sys
from pathlib import Path


def split_by_quat(buf):
	p = False
	l = list(buf)
	l.reverse()
	s = ""
	res = []
	while l:
		c = l.pop()
		if c == '"':
			if p is True:
				s += c
				res += [s]
				s = ""
			else:
				if len(s) != 0:
					res += [s]
				s = '"'
			p = not p
		elif c == "\\" and l and l[0] == '"':
			s += c
			s += l.pop()
		else:
			s += c

	if len(s) != 0:
		res += [s]
	return res


def AddSepMiddleOfElement(l, sep):
	l = list(l)  # avoid in-place mutation
	l.reverse()
	new_list = [l.pop()]
	while l:
		new_list.append(sep)
		new_list.append(l.pop())
	return new_list


def my_split_with_seps(s, seps):
	res = [s]
	for sep in seps:
		new_res = []
		for r in res:
			sp = r.split(sep)
			sp = AddSepMiddleOfElement(sp, sep)
			new_res += sp
		res = new_res
	new_res = []
	for r in res:
		if r != "":
			new_res.append(r)
	return new_res


def my_split(s, seps):
	res = [s]
	for sep in seps:
		new_res = []
		for r in res:
			sp = r.split(sep)
			new_res += sp
		res = new_res
	new_res = []
	for r in res:
		if r != "":
			new_res.append(r)
	return new_res


def MultiIndex(seq, key):
	l = []
	i = 0
	for s in seq:
		if s == key:
			l.append(i)
		i = i + 1
	return l


def Replace(lines, parameter_table, keys):
	r = []
	for string in lines:
		l = split_by_quat(string)
		for s in l:
			if s and s[0] == '"':
				r += [s]
			else:
				tokens = my_split_with_seps(
					s,
					["\t", ",", " ", "=", "[", "]", "-", "<", ">", "~", "!", ".", "(", ")", "\r", "\n"],
				)
				for key in keys:
					try:
						indices = MultiIndex(tokens, key)
						for i in indices:
							tokens[i] = parameter_table[key][0]
					except Exception:
						pass
				r += tokens
	return r


def MakeParameterTable(lines, parameter_table, keys):
	names = []
	values = []
	group_names = []
	group_values = []
	idx = 0
	start = 1
	for line in lines:
		idx += 1
		line = line.strip("\n")
		if line.find("--") != -1:
			line = line[0 : line.find("--")]

		tokens = my_split(line, ["\t", ",", " ", "=", "[", "]", "\r", "\n"])
		if len(tokens) == 0:
			continue
		if tokens[0] == "quest":
			start = idx
			break
		if tokens[0] == "define":
			if len(tokens) > 1 and tokens[1] == "group":
				if len(tokens) >= 3:
					group_value = []
					for value in tokens[3:]:
						if parameter_table.get(value, 0) != 0:
							value = parameter_table[value]
						group_value.append(value)
					parameter_table[tokens[2]] = group_value
					keys.append(tokens[2])
			elif len(tokens) > 5:
				print(f"{idx} Invalid syntax")
				print("define [name] = [value]")
				print('define group [name] = "["[v0],[v1], ... "]"')
			else:
				value = tokens[2] if len(tokens) > 2 else ""
				if parameter_table.get(value, 0) != 0:
					value = parameter_table[value]
				parameter_table[tokens[1]] = [value]
				keys.append(tokens[1])
	return start


def run(filename):
	parameter_table = dict()
	keys = []

	filename = filename.strip("\n")
	if filename == "":
		return
	try:
		with open(filename, "r", encoding='utf-8') as fh:
			lines = fh.readlines()
	except UnicodeDecodeError:
		with open(filename, "r", encoding='latin1') as fh:
			lines = fh.readlines()


	start = MakeParameterTable(lines, parameter_table, keys)
	if len(keys) == 0:
		return False

	lines = lines[start - 1 :]
	r = Replace(lines, parameter_table, keys)

	out_dir = Path("pre_qc")
	out_dir.mkdir(parents=True, exist_ok=True)
	out_path = out_dir / filename

	with open(out_path, "w", newline="") as f:
		for s in r:
			f.write(s)
	return True


if __name__ == "__main__":
	if len(sys.argv) >= 2:
		run(sys.argv[1])
