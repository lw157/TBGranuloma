#!/bin/bash

#SBATCH -J tbcnt
#SBATCH -e job.%j.err
#SBATCH -o job.%j.out
#SBATCH --mem=150000
#SBATCH -p scavenger
##SBATCH -c 4

cd /hpc/group/kolab/lw157/TobinTB

spaceranger_path="/hpc/group/kolab/lw157/bin/10xVisum/spaceranger-2.0.1/"
refpath="/hpc/group/kolab/lw157/bin/10xVisum/refdata-gex-GRCh38_TBH37Rv"
probe="/hpc/group/kolab/lw157/TobinTB/0_raw_data/Visium_Human_Transcriptome_Probe_Set_v2.0_GRCh38-2020-A.csv"
imagepath="/hpc/group/kolab/lw157/TobinTB/0_raw_data/Image_files/"
datpath="/hpc/group/kolab/lw157/TobinTB/0_raw_data/H37WMDRX3/"

echo "4 sample will be processed with spaceranger \n"

$spaceranger_path/spaceranger count --id=SP19-000120_B1_GRCh38TBcount --fastqs="$datpath"SP19-000120_B1  --sample=SP19-000120_B1 --transcriptome="$refpath" --probe-set="$probe" --slide=V52L25-339 --area=B1 --cytaimage="$imagepath"/CAVG10008_2023-03-01_12-24-08_tobinrun2230301_V52L25-339_B_sp19000120b1.tif --localcores=8 --localmem=64 --nopreflight
$spaceranger_path/spaceranger count --id=SP16-040417_B3_TBcount --fastqs="$datpath"SP16-040417_B3 --sample=SP16-040417_B3 --transcriptome="$refpath" --probe-set="$probe" --slide=V52L26-097 --area=B1 --cytaimage="$imagepath"/CAVG10008_2023-03-01_11-24-55_tobin230301_V52L26-097_B_sp16040417b3.tif --localcores=8 --localmem=64 --nopreflight
$spaceranger_path/spaceranger count --id=SP16-002655_A3_TBcount --fastqs="$datpath"SP16-002655_A3 --transcriptome="$refpath" --probe-set="$probe" --slide=V52L26-097 --area=A1 --cytaimage="$imagepath"/CAVG10008_2023-03-01_11-24-55_tobin230301_V52L26-097_A_sp16002655a3.tif --localcores=8 --localmem=64 --nopreflight
$spaceranger_path/spaceranger count --id=SR16-005712_A1_GRCh38TBcount --fastqs="$datpath"SR16-005712_A1 --sample=SR16-005712_A1 --transcriptome="$refpath" --probe-set="$probe" --slide=V52L25-339 --area=A1 --cytaimage="$imagepath"/CAVG10008_2023-03-01_12-24-08_tobinrun2230301_V52L25-339_A_sr16005712a1.tif --localcores=8 --localmem=64 --nopreflight
