#!/usr/bin/env bash

# Setup:
cd to-the-correct-folder
./isotropic_cluster 1 5 ../../../clusterSimScripts/completexample.g4mac  # 1 means ???, 5 means generate 5 files
cd /nfs/hicran/project/e18sat/ekemar_sim/clusterSimScripts/

# Add new jobs:
qsub New_Parallel_run.sh  # Generates half-processed intermediary data files
