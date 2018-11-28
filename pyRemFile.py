#!C:\Users\irfak\AppData\Local\Programs\Python\Python36-32\python.exe python

import os
import time

path = "X:\XXXX\XXXX\XXXX\Python2Email\BackupFiles"

folder = (time.strftime('%Y%m%d'))
print(folder)

path = "X:\XXXX\XXXX\XXXX\Python2Email\BackupFiles"

Full_Path = os.path.join(path,folder)
print(Full_Path)

lsdir = os.listdir(Full_Path)
print(lsdir)

f = ""

for filename in lsdir:
        if 'XXX' in filename:
            f = filename

delfile = os.path.join(Full_Path,f)
print(delfile)

os.remove(delfile)

