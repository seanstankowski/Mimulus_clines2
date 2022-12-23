#! /usr/bin/env python3

from sys import argv
import os
import subprocess
import argparse


# Parse command line arguments
parser = argparse.ArgumentParser(
	description="Use plink to make bed file in windows",
)
parser.add_argument('ped', metavar='ped',
	help='.ped input file')
parser.add_argument('-w', '--window_file', dest = 'win', metavar='WIN', help='File with start and stop positions for windows')
parser.add_argument('-o', '--output', dest = 'out', metavar='DIR', help='Output directory to place new bed files', default = '.')


if len(argv) == 1:
	parser.print_usage()
	exit(0)
	
args = parser.parse_args()

ped_file = args.ped
window_input = args.win

output = args.out

if args.out is not '.':
	os.mkdir(args.out)

for i in open(window_input):
	
	
	line = i.strip().split('\t')
	#print(line)
	
	if not line[0].startswith('no'):
		start_SNPID = line[2]
		end_SNPID = line[3]
		win_num = line[0]
		chr = line[1]
	
		plink = 'plink --file {} --from {} --to {} --make-bed --out {}/Chr{}_{} --allow-extra-chr'
		cmnd = plink.format(ped_file, start_SNPID, end_SNPID, output, chr, win_num)
		print('Running plink ...', cmnd)
		
		subprocess.call(cmnd, shell=True) == 0 or exit(1)

		#print(cmnd)
	

