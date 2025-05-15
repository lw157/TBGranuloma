#!/bin/bash

#SBATCH -J tbcnt
#SBATCH -e job.%j.err
#SBATCH -o job.%j.out
#SBATCH --mem=50000
#SBATCH -p scavenger
##SBATCH -c 4

cd /hpc/group/kolab/lw157/TobinTB

spaceranger_path="/hpc/group/kolab/lw157/bin/10xVisum/spaceranger-2.0.1/"

$spaceranger_path/spaceranger aggr --id=Tobin8392 \
                  --csv=aggr_sample.csv \
                  --normalize=mapped
