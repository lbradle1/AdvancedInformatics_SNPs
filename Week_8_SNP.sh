#start with an srun - not sure actually when I need this and whenI don't 

#make another set of prefixes to use fot eh first step 

## THIS IS WRONG
## make prefixes of BAM files 
ls /data/class/ecoevo283/lbradle1/AdvInf_Winter2021/DNAseq/rawdata/*_1_1.fq.gz | sed 's/_1.fq.gz//' > prefixes2.txt

#make 3 bash scripts based off Dr. Longs' notes 
#script 1 merges sample replicates with Picard MergeSamFiles, removes duplicates with GATK
# MardDuplicates and call SNP with Haplotype Caller 
# generates one GVCF file

###############################################
### Run First Script ##########################
###############################################

# run first script
sbatch dna_snp_step1.sh

#job 3690190_1-4    

###########################################
### RUN Second Script #####################
###########################################
sbatch dna_snp_2

# job 


#############################################
#######  Run 3rd Script #####################
#############################################

sbatch dna_snp_3.sh

# job 