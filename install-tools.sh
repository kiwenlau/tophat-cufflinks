#!/bin/bash

#Install tophat2/ 2.0.9, bowtie2 2.1.0, samtools 0.1.18 and cufflinks 2.2.1

# download 
wget http://depot.galaxyproject.org/package/linux/x86_64/samtools/samtools-0.1.18-linux-x86_64.tgz samtools-0.1.18-linux-x86_64.tgz 
wget http://depot.galaxyproject.org/package/linux/x86_64/bowtie2/bowtie2-2.1.0-linux-x86_64.tgz bowtie2-2.1.0-linux-x86_64.tgz
wget http://depot.galaxyproject.org/package/linux/x86_64/tophat/tophat-2.0.9.Linux_x86_64.tar.gz tophat-2.0.9.Linux_x86_64.tar.gz
wget http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz cufflinks-2.2.1.Linux_x86_64.tar.gz

# extract
tar -zxf samtools-0.1.18-linux-x86_64.tgz
tar -zxf bowtie2-2.1.0-linux-x86_64.tgz
tar -zxf tophat-2.0.9.Linux_x86_64.tar.gz
tar -zxf cufflinks-2.2.1.Linux_x86_64.tar.gz


cp -r samtools-0.1.18/bin/samtools /usr/local/bin
cp -r bowtie2-2.1.0 /usr/local/bin/bowtie2
cp -r tophat-2.0.9.Linux_x86_64 /usr/local/bin/tophat2 


rm -rf tophat* bowtie2* samtools*

# set envrionment variable PATH
export PATH="/usr/local/bin/samtools/bin:/usr/local/bin/bowtie2:/usr/local/bin/tophat2:/usr/local/bin/cufflinks:$PATH" 