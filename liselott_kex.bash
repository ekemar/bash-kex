#!/usr/bin/env bash
./add_new_jobs.bash
while true; do 
    sleep 120s
    QSTAT_OUTPUT=$(qstat | wc -l) # Ger om beräkningarna körs eller inte
    if [ "$QSTAT_OUTPUT" -lt "1" ]; then
        rm planetcosmic_sims*
        ./add_new_jobs.bash
    fi
    
    NUM_FILES=$(ls some_folder | wc -l)
    if [ "$NUM_FILES" -gt 5000 ]; then
        break
    fi
done

# if [[ "$?" -ne 0 ]]; then 
#cd /nfs/mds/project/e18sat/sim_ekemar_mds/  # Här skapas filerna
