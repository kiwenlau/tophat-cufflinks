#!/bin/bash

# install samtools, bowtie2, tophat2 and cufflinks 

apt-get update
apt-get install -y unzip wget

# download 
wget https://depot.galaxyproject.org/package/linux/x86_64/samtools/samtools-1.2-Linux-x86_64.tgz 
wget -O bowtie2-2.2.6.zip http://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.2.6/bowtie2-2.2.6-linux-x86_64.zip/download 
wget https://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.0.Linux_x86_64.tar.gz
wget http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz cufflinks-2.2.1.Linux_x86_64.tar.gz

# extract
mkdir samtools-1.2
tar -zxf samtools-1.2-Linux-x86_64.tgz -C samtools-1.2
unzip bowtie2-2.2.6.zip
tar -zxf tophat-2.1.0.Linux_x86_64.tar.gz
tar -zxf cufflinks-2.2.1.Linux_x86_64.tar.gz


cp -r samtools-1.2 /usr/local/bin/samtools
cp -r bowtie2-2.2.6 /usr/local/bin/bowtie2
cp -r tophat-2.1.0.Linux_x86_64 /usr/local/bin/tophat2 
cp -r cufflinks-2.2.1.Linux_x86_64 /usr/local/bin/cufflinks 

rm -rf /root/*