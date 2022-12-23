#! /usr/bin/env python3

from sys import argv
from glob import glob
import os
import subprocess
import argparse

parser = argparse.ArgumentParser(
	description="Run admixture on windows",
)
parser.add_argument('input', metavar='DIR',
	help='directory containing bed files')
parser.add_argument('-k', dest = 'k', metavar='X', help='k value for admixture')
parser.add_argument('-o', dest = 'out', metavar='DIR', help='output directory')

if len(argv) == 1:
	parser.print_usage()
	exit(0)
	
args = parser.parse_args()

output = args.out
dir = args.input

if output is None:
	output = dir +'/admixture'
	os.mkdir(output)
	
path = os.path.join(dir,'*.bed')
bed_list = glob(path)


if len(bed_list) == 0:
	print('Error, no bed files found')
	exit(0)

#print(bed_list)	
	
for i in range(0, len(bed_list)):
	admix = 'admixture -j4 {} {}'
	cmnd = admix.format(bed_list[i], args.k)
	
	print('Running admixture....', cmnd)
	
	subprocess.call(cmnd, shell=True) 
	
move_filesQ = 'mv *.Q {}'
mv_cmndQ = move_filesQ.format(output)
subprocess.call(mv_cmndQ, shell=True) == 0 or exit(1)

move_filesP = 'mv *.P {}'
mv_cmndP = move_filesP.format(output)
subprocess.call(mv_cmndP, shell=True) == 0 or exit(1)
