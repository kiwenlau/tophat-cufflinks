# why choose python?
FROM python:2.7
MAINTAINER kiwenlau@gmail.com

WORKDIR /root

# install samtools, bowtie2, tophat2 and cufflinks
ADD install-tools.sh /tmp/install-tools.sh
RUN sh /tmp/install-tools.sh

# add official test dataset of tophat
# https://ccb.jhu.edu/software/tophat/downloads/test_data.tar.gz 
ADD test_data.tar.gz /root
 
# add official test dataset of cufflinks
# https://github.com/cole-trapnell-lab/cufflinks/tree/master/doc/html/downloads/test_data.sam
ADD test_data.sam /root/test_data.sam