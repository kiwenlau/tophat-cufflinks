##1. kiwenlau/tophat-cufflinks镜像

- Base image: Python:2.7
- OS: Debian 8

- samtools: 1.2
- bowtie2: 2.2.6
- tophat2: 2.1.0
- cufflinks: 2.2.1

构建镜像

```
sudo docker build  -t kiwenlau/tophat-cufflinks .
```

##2. 测试tophat2和cufflinks

**运行容器**

```
sudo docker run -it kiwenlau/tophat-cufflinks bash
```

**测试tophat2**

```
cd ~/test/test_data
tophat2 test_ref reads_1.fq reads_2.fq
cat tophat_out/junctions.bed 
```

```
track name=junctions description="TopHat junctions"
test_chromosome 179 400 JUNC00000001 37 + 179 400 255,0,0 2 71,50 0,171
test_chromosome 350 550 JUNC00000002 37 + 350 550 255,0,0 2 50,50 0,150
```

**测试cufflinks**

```
cd ~test
cufflinks ./test_data.sam
cat transcripts.gtf 
```

```
test_chromosome Cufflinks transcript 53 550 1000 + . gene_id "CUFF.1"; transcript_id "CUFF.1.1"; FPKM "10574437.0101997163"; frac "1.000000"; conf_lo "8460482.180780"; conf_hi "12688391.839619"; cov "144.168314";
test_chromosome Cufflinks exon 53 250 1000 + . gene_id "CUFF.1"; transcript_id "CUFF.1.1"; exon_number "1"; FPKM "10574437.0101997163"; frac "1.000000"; conf_lo "8460482.180780"; conf_hi "12688391.839619"; cov "144.168314";
test_chromosome Cufflinks exon 351 400 1000 + . gene_id "CUFF.1"; transcript_id "CUFF.1.1"; exon_number "2"; FPKM "10574437.0101997163"; frac "1.000000"; conf_lo "8460482.180780"; conf_hi "12688391.839619"; cov "144.168314";
test_chromosome Cufflinks exon 501 550 1000 + . gene_id "CUFF.1"; transcript_id "CUFF.1.1"; exon_number "3"; FPKM "10574437.0101997163"; frac "1.000000"; conf_lo "8460482.180780"; conf_hi "12688391.839619"; cov "144.168314";
```

##3. 运行RNA-Seq Pipeline

```
cd ~
./run-pipeline.sh
```
	

