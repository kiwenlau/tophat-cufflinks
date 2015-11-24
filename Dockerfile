# tophat2 dependent on python 2.7
FROM python:2.7
MAINTAINER kiwenlau@gmail.com

WORKDIR /root

# install samtools, bowtie2, tophat2 and cufflinks
ADD install-tools.sh /tmp/install-tools.sh
RUN sh /tmp/install-tools.sh

# add official test dataset of tophat
# https://ccb.jhu.edu/software/tophat/downloads/test_data.tar.gz 
ADD test_data.tar.gz /root/test
 
# add official test dataset of cufflinks
# https://github.com/cole-trapnell-lab/cufflinks/tree/master/doc/html/downloads/test_data.sam
ADD test_data.sam /root/test/test_data.sam

# add RNA-Seq pipeline dataset from Nextflow
# https://github.com/nextflow-io/rnatoy
ADD data.tar.gz /root

# add shell script for running RNA-Seq pipeline
ADD run-pipeline.sh /root/run-pipeline.sh

# set envrionment variable PATH
ENV PATH=$PATH:/usr/local/bin/samtools/bin:/usr/local/bin/bowtie2:/usr/local/bin/tophat2:/usr/local/bin/cufflinks