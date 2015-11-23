#!/bin/bash

# install samtools, bowtie2, tophat2 and cufflinks 

apt-get update
apt-get install unzip

# download 
wget -O samtools-1.2.tar.bz2 http://sourceforge.net/projects/samtools/files/samtools/1.2/samtools-1.2.tar.bz2/download 
wget -O bowtie2-2.2.6.zip http://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.2.6/bowtie2-2.2.6-linux-x86_64.zip/download 
wget https://ccb.jhu.edu/software/tophat/downloads/tophat-2.1.0.Linux_x86_64.tar.gz
wget http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz cufflinks-2.2.1.Linux_x86_64.tar.gz

# extract
tar -jxf samtools-1.2.tar.bz2
unzip bowtie2-2.2.6.zip
tar -zxf tophat-2.1.0.Linux_x86_64.tar.gz
tar -zxf cufflinks-2.2.1.Linux_x86_64.tar.gz


cp -r samtools-1.2 /usr/local/bin/samtools
cp -r bowtie2-2.2.6 /usr/local/bin/bowtie2
cp -r tophat-2.1.0.Linux_x86_64 /usr/local/bin/tophat2 
cp -r cufflinks-2.2.1.Linux_x86_64 /usr/local/bin/cufflinks


rm -rf tophat* bowtie2* samtools*

# set envrionment variable PATH
PATH="/usr/local/bin/samtools/bin:/usr/local/bin/bowtie2:/usr/local/bin/tophat2:/usr/local/bin/cufflinks:$PATH" 