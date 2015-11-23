# why choose python?
FROM python:2.7
MAINTAINER kiwenlau@gmail.com

WORKDIR /root

ADD http://depot.galaxyproject.org/package/linux/x86_64/tophat/tophat-2.0.9.Linux_x86_64.tar.gz tophat-2.0.9.Linux_x86_64.tar.gz
ADD http://depot.galaxyproject.org/package/linux/x86_64/bowtie2/bowtie2-2.1.0-linux-x86_64.tgz bowtie2-2.1.0-linux-x86_64.tgz
ADD http://depot.galaxyproject.org/package/linux/x86_64/samtools/samtools-0.1.18-linux-x86_64.tgz samtools-0.1.18-linux-x86_64.tgz 

# add official test data of tophat
ADD test_data.tar.gz /root

RUN tar zxf tophat-2.0.9.Linux_x86_64.tar.gz
RUN tar zxf bowtie2-2.1.0-linux-x86_64.tgz
RUN tar zxf samtools-0.1.18-linux-x86_64.tgz

RUN cp -R samtools-0.1.18/* /usr/local/
RUN cp bowtie2-2.1.0/bowtie2* /usr/local/bin/
RUN cp tophat-2.0.9.Linux_x86_64/* /usr/local/bin/

RUN rm -rf tophat* bowtie2* samtools*

# install cufflinks
ADD http://cole-trapnell-lab.github.io/cufflinks/assets/downloads/cufflinks-2.2.1.Linux_x86_64.tar.gz cufflinks-2.2.1.Linux_x86_64.tar.gz
RUN tar -zxvf cufflinks-2.2.1.Linux_x86_64.tar.gz
RUN cp -r cufflinks-2.2.1.Linux_x86_64 /usr/local/bin/cufflinks
ENV PATH="/usr/local/bin/cufflinks:$PATH" 

# add official test data of cufflinks
ADD test_data.sam /root/test_data.sam