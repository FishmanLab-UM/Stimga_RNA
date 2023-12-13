for i in *fastq.gz; do java -jar /home/thom_nelson/opt/Trimmomatic-0.35/trimmomatic-0.35.jar PE -threads 8 -phred33 ${i:0:-15}R1_001.fastq.gz ${i:0:-15}R2_001.fastq.gz ${i:0:-15}R1_001.paired.fastq.gz ${i:0:-15}R1_001.unpaired.fastq.gz ${i:0:-15}R2_001.paired.fastq.gz ${i:0:-15}R2_001.unpaired.fastq.gz ILLUMINACLIP:/home/thom_nelson/resources/Illumina/Many.TruSeq.PE.fa:2:20:10:4 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36
done