#!/usr/bin/python

import sys, string

sum = 0
while 1:
    try:
        line = raw_input()                
    except EOFError:                      
        break
    else:
        sum = sum + float(line)
print sum
