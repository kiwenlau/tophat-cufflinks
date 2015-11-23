##1. kiwenlau/tophat-cufflinks镜像

- Base image: Python:2.7
- OS: Debian 8

- tophat	2.0.9
- bowtie2	2.1.0
- samtools	0.1.18
- cufflinks	2.2.1

构建镜像

```
sudo docker build  -t kiwenlau/tophat-cufflinks:0.1 .
```

##2. 测试

**运行容器**

```
sudo docker run -it kiwenlau/tophat-cufflinks:0.1 bash
```

**测试tophat**

```
cd test_data
tophat test_ref reads_1.fq reads_2.fq
```

**测试cufflinks**

```
cd
cufflinks ./test_data.sam
cat transcripts.gtf 
```

```
test_chromosome Cufflinks transcript 53 550 1000 + . gene_id "CUFF.1"; transcript_id "CUFF.1.1"; FPKM "10574437.0101997163"; frac "1.000000"; conf_lo "8460482.180780"; conf_hi "12688391.839619"; cov "144.168314";
test_chromosome Cufflinks exon 53 250 1000 + . gene_id "CUFF.1"; transcript_id "CUFF.1.1"; exon_number "1"; FPKM "10574437.0101997163"; frac "1.000000"; conf_lo "8460482.180780"; conf_hi "12688391.839619"; cov "144.168314";
test_chromosome Cufflinks exon 351 400 1000 + . gene_id "CUFF.1"; transcript_id "CUFF.1.1"; exon_number "2"; FPKM "10574437.0101997163"; frac "1.000000"; conf_lo "8460482.180780"; conf_hi "12688391.839619"; cov "144.168314";
test_chromosome Cufflinks exon 501 550 1000 + . gene_id "CUFF.1"; transcript_id "CUFF.1.1"; exon_number "3"; FPKM "10574437.0101997163"; frac "1.000000"; conf_lo "8460482.180780"; conf_hi "12688391.839619"; cov "144.168314";
```
	

