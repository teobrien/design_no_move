#!/bin/bash
#$ -S /bin/bash
#$ -N m1a_7a_c1
#$ -cwd
#$ -e logs
#$ -o logs
#$ -l h_vmem=4G
#$ -tc 15
#$ -p -2
######$ -pe threaded 2

##mkdir ./$SGE_TASK_ID
#cp -r ./template ./$SGE_TASK_ID
#cd ./$SGE_TASK_ID
time ~/Rosetta/main/source/bin/rosetta_scripts.static.linuxgccrelease @ligand_dock.flags -parser:protocol design_nocst.xml -nstruct 3 -ignore_zero_occupancy F
#cd ..
