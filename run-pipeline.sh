#!/bin/bash

#run the RNA-Seq pipline from: http://www.nextflow.io/example4.html

echo "Step 1. Builds the genome index required by the mapping process"
mkdir index
bowtie2-build data/ggal_1_48850000_49020000.Ggal71.500bpflank.fa index/genome_index


echo "Step 2. Maps each read-pair by using Tophat2 mapper tool"
tophat2 -o tophat_out_gut index/genome_index data/ggal_gut_1.fq data/ggal_gut_2.fq
tophat2 -o tophat_out_liver index/genome_index data/ggal_liver_1.fq data/ggal_liver_2.fq

echo "Step 3. Assembles the transcript by using the cufflinks"
cufflinks -o cufflinks_out_gut tophat_out_gut/accepted_hits.bam
cufflinks -o cufflinks_out_liver tophat_out_liver/accepted_hits.bam

