#!/bin/sh
#SBATCH -N 1
#SBATCH -p amd_256
#SBATCH -n 64
##srun -n 64 ~/fangjzh/bin/lmp_mpi -i in.eam.meam
export export I_MPI_PMI_LIBRARY=/usr/lib64/libpmi2.so
program=/public3/home/sc52368/fangjzh/bin/lmp_mpi

## cpu info
cat /proc/cpuinfo | grep 'model name' | uniq > performance.txt
num_cores=$(lscpu | awk '{if($1=="CPU(s):"){total=$2}}{if($1=="Thread(s)"){p=$4}}END{print total/p}')

for num in $(seq 1 $num_cores)
do
echo $num >> performance.txt
srun -n $num $program -i in.eam
cat log.lammps | grep  Performance >> performance.txt
done


