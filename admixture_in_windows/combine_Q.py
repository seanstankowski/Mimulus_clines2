#! /usr/bin/env python3

from sys import argv
from glob import glob
import os
import subprocess
import argparse

parser = argparse.ArgumentParser(
	description="Average Q scores",
)
parser.add_argument('input', metavar='DIR',
	help='directory containing admixture output')

if len(argv) == 1:
	parser.print_usage()
	exit(0)
	
args = parser.parse_args()

input = args.input

path = os.path.join(input,'*.Q')
q_files = glob(path)
#print(q_files)

q_data = []


for i in range(0, len(q_files)):
	q_data_A1 = []
	q_data_A2 = []
	r_sum = 0.0
	y_sum = 0.0
	
	
	window =  q_files[i].split('/')[-1]
	
	for x in open(q_files[i]):
		
		line = x.strip().split(' ')
		q_data_A1.append(line[0])
		q_data_A2.append(line[1])
		
		#print(line)
		
	print(window, end = '\t')
	#print('\n')
	#print(q_data_A1)
	
	for r in range(0, 121):
		r_sum += float(q_data_A1[r])
	
	for y in range(213, 289):
		y_sum += float(q_data_A1[y])
	
	r_mean = r_sum/121
	y_mean = y_sum/76
	
	if r_mean > y_mean:
		q_data.append(q_data_A1)
	elif y_mean > r_mean:
		q_data.append(q_data_A2)

#print(q_data)
print('\n', end ='\t')
for row in range(0, len(q_data[0])):
	#print(q_data[0][row])
	
	for col in range(0, len(q_files)):
		print(q_data[col][row], end = '\t', sep = '\t')
	print('\n', end ='\t')
	#print('\n')

		
	#print('\t')
	
#print('\t'.join(q_data))