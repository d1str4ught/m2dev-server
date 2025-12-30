#!/usr/local/bin/python
import pre_qc
import os
import sys
os.system('rm -rf object')
os.system('mkdir object')
#os.system('rm -rf pre_qc')
os.system('mkdir pre_qc')
os.system('chgrp quest object')
for line in file('locale_list'):
	r = pre_qc.run (line)
	if r == True:
		filename = 'pre_qc/'+line
	else:
		filename = line

	if os.system('./qc '+filename):
		print('Error occured on compile ') + line
		os.system('chmod -R 770 object')
		import sys
		sys.exit(-1)

os.system('chmod -R 770 object')
