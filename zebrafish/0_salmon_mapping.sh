#!/bin/bash

#SBATCH -J tbcnt
#SBATCH -e job.%j.err
#SBATCH -o job.%j.out
#SBATCH --mem=80000
#SBATCH -p scavenger
##SBATCH -c 4

cd /hpc/group/kolab/lw157/TobinTB

salmon_ref="/hpc/group/kolab/lw157/TobinTB/GRCz11/refseq_v4.3.2/SalmonIndex"
gtf="/hpc/group/kolab/lw157/TobinTB/GRCz11/refseq_v4.3.2/genes/genes.sorted.gtf.gz"

for idat in zebrafish_RNAseq/*fastq
do
        echo $idat
        salmon quant -i $salmon_ref \
             -l A \
             -r $idat \
             -p 8 --validateMappings \
             -o "$idat"_1140_salmon
done
