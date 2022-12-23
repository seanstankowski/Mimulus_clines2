#! /usr/bin/env python3

from sys import argv
import argparse

parser = argparse.ArgumentParser(description = 'get boundaries for genomic windows')	
parser.add_argument('input', metavar = 'IN', help = '.map file')
parser.add_argument('--win_size', dest= 'win_size', default = '1000',type = int, help = 'Number of SNPs per window')

args = parser.parse_args()

input_file = args.input
win_size = (args.win_size)
step_size = win_size -1

data = []
start_pos =[]

for x in open(input_file):
	line = x.strip().split('\t')
	data.append(line)

for y in range(1,len(data)):
	if data[y][0].startswith('Scaf'):
		pass	
	elif data[y][0] != data[y-1][0]:
		start_pos.append(y)
		
#print(start_pos)



#for x in range(0, len(data),1):

LG_count = 0
if LG_count == 0:			
	count = 1
	for i in range(0, len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break
			
			
if LG_count == 1:			
	count = 1
	for i in range(start_pos[0], len(data), win_size):
	
		if data[i][0] == data[i+win_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+win_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break
			
if LG_count == 2:			
	count = 1
	for i in range(start_pos[1], len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break	
			
if LG_count == 3:			
	count = 1
	for i in range(start_pos[2], len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break	
			
if LG_count == 4:			
	count = 1
	for i in range(start_pos[3], len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break			
			
if LG_count == 5:			
	count = 1
	for i in range(start_pos[4], len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break			
						
if LG_count == 6:			
	count = 1
	for i in range(start_pos[5], len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break			
						
if LG_count == 7:			
	count = 1
	for i in range(start_pos[6], len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break			
						
if LG_count == 8:			
	count = 1
	for i in range(start_pos[7], len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break			
						
if LG_count == 9:			
	count = 1
	for i in range(start_pos[8], len(data), win_size):
	
		if data[i][0] == data[i+step_size][0]:
			snp1 = data[i][1]
			snp2 = data[i+step_size][1]
	
			pos1 = data[i][3]
			pos2 = data[i+step_size][3]
		
			chr = data[i][0]
	
			midpoint = ((int(pos2) - int(pos1))/2)+int(pos1)
	
			print('Window{}'.format(count), chr, snp1, snp2, pos1, pos2, midpoint) 
	
			count +=1
		
		elif data[i][0] != data[i+step_size][0]:
	
			print('no window', data[i][0], data[i][1], data[i][3])
			LG_count+=1
			break			
						
					