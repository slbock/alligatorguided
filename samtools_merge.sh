#PBS -S /bin/bash
#PBS -N SAMtools1.0
#PBS -q batch
#PBS -l nodes=1:ppn=2
#PBS -l walltime=48:00:00
#PBS -l mem=20gb

module load SAMtools/1.6-foss-2016b

cd /lustre1/sb61937/STIM_READS_postqc

#use samtools to merge the sorted bam files for all samples
samtools merge -b fixed_138599-110_S27_L001.sort.bam,fixed_138599-110_S27_L002.sort.bam,fixed_138599-110_S27_L003.sort.bam,fixed_138599-134_S21_L001.sort.bam,fixed_138599-134_S21_L002.sort.bam,fixed_138599-134_S21_L003.sort.bam,fixed_138599-134_S21_L004.sort.bam,fixed_138599-23_S22_L001.sort.bam,fixed_138599-23_S22_L002.sort.bam,fixed_138599-23_S22_L003.sort.bam,fixed_138599-23_S22_L004.sort.bam,fixed_138599-63_S23_L001.sort.bam,fixed_138599-63_S23_L002.sort.bam,fixed_138599-63_S23_L003.sort.bam,fixed_138599-63_S23_L004.sort.bam,fixed_138599-68_S18_L001.sort.bam,fixed_138599-68_S18_L002.sort.bam,fixed_138599-68_S18_L003.sort.bam,fixed_138599-68_S18_L004.sort.bam,fixed_138599-69_S24_L001.sort.bam,fixed_138599-69_S24_L002.sort.bam,fixed_138599-69_S24_L003.sort.bam,fixed_138599-69_S24_L004.sort.bam,fixed_138599-8_S15_L001.sort.bam,fixed_138599-8_S15_L002.sort.bam,fixed_138599-8_S15_L003.sort.bam,fixed_138599-8_S15_L004.sort.bam,fixed_138599-90_S19_L001.sort.bam,fixed_138599-90_S19_L002.sort.bam,fixed_138599-90_S19_L003.sort.bam,fixed_138599-90_S19_L004.sort.bam STIM2014.sort.bam
