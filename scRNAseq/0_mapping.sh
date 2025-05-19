#!/bin/bash
#
cellranger multi --id=SP16-040417_B3 --csv=SP16-040417_B3_config.csv
cellranger multi --id=SP16_002655_A3 --csv=SP16_002655_A3_config.csv
cellranger multi --id=10S_5513_H3 --csv=s10_5513_H3_config.csv
cellranger multi --id=10S_5513_H6 --csv=s10S_5513_H6_config.csv


######################################################################################
#Multiconfig used
#SP16-040417_B3
[gene-expression]
reference,/mnt/deck-code/references/refdata-gex-GRCh38-2020-A
chemistry,auto
force-cells,11000
no-secondary,false
no-bam,false
probe-set,/mnt/deck-code/packages/cellranger-7.1.0/probe_sets/Chromium_Human_Transcriptome_Probe_Set_v1.0.1_GRCh38-2020-A.csv
filter-probes,true
check-library-compatibility,true

[libraries]
fastq_id,fastqs,lanes,feature_types,subsample_rate
SP16_040417_B3,/mnt/deck-io/inputs/a4dd9b63-5152-4b0b-b430-72a0d4b95cd5/b4bf26ba-7f2b-4bbf-a185-896984d8701c,any,Gene Expression


#SP16_002655_A3
[gene-expression]
reference,/mnt/deck-code/references/refdata-gex-GRCh38-2020-A
chemistry,auto
force-cells,8500
no-secondary,false
no-bam,false
probe-set,/mnt/deck-code/packages/cellranger-7.1.0/probe_sets/Chromium_Human_Transcriptome_Probe_Set_v1.0.1_GRCh38-2020-A.csv
filter-probes,true
check-library-compatibility,true

[libraries]
fastq_id,fastqs,lanes,feature_types,subsample_rate
SP16_002655_A3,/mnt/deck-io/inputs/c54ae573-5a86-4fef-b3af-b10f057b5f4a/a783db44-6ebd-47a7-9f32-3193d9641827,any,Gene Expression

#s10S_5513_H3
[gene-expression]
reference,/mnt/deck-code/references/refdata-gex-GRCh38-2020-A
chemistry,auto
force-cells,5000
no-secondary,false
no-bam,false
probe-set,/mnt/deck-code/packages/cellranger-7.1.0/probe_sets/Chromium_Human_Transcriptome_Probe_Set_v1.0.1_GRCh38-2020-A.csv
filter-probes,true
check-library-compatibility,true

[libraries]
fastq_id,fastqs,lanes,feature_types,subsample_rate
s10S_5513_H3,*.fastq.gz,any,Gene Expression

#s10S_5513_H6
[gene-expression]
reference,/mnt/deck-code/references/refdata-gex-GRCh38-2020-A
chemistry,auto
force-cells,5000
no-secondary,false
no-bam,false
probe-set,/mnt/deck-code/packages/cellranger-7.1.0/probe_sets/Chromium_Human_Transcriptome_Probe_Set_v1.0.1_GRCh38-2020-A.csv
filter-probes,true
check-library-compatibility,true

[libraries]
fastq_id,fastqs,lanes,feature_types,subsample_rate
s10S_5513_H6,*.fastq.gz,any,Gene Expression
