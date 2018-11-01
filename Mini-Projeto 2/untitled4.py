#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct 31 22:59:19 2018

@author: miguelregouga
"""

# Open the file with read only permit
f = open('NovasQuestoes.txt')
line = f.readline()
while line:
    print(line)
    line = f.readline()
f.close()