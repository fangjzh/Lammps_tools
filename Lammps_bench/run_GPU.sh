#!/bin/bash
program=~/fangjzh/bin/lmp_mpi

## cpu info
cat /proc/cpuinfo | grep 'model name' | uniq > performance.txt
num_cores=$(lscpu | awk '{if($1=="CPU(s):"){total=$2}}{if($1=="Thread(s)"){p=$4}}END{print total/p}')

for num in $(seq 1 $num_cores)
do
echo $num >> performance.txt
#mpirun -np $num $program -i in.eam 
## gpu example 
mpirun -np $num $program -sf gpu -pk gpu 1 -i in.eam
cat log.lammps | grep  Performance | grep -v Implementing >> performance.txt
done
