#!/bin/bash/

function runnamd() {
 /home/miro/md/NAMD_2.13_Linux-x86_64-multicore-CUDA/namd2 +p16 +setcpuaffinity $1 | tee $1.log
 }

