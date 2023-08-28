#!/bin/bash

# <1 kB
wget https://pmitev.github.io/to-awk-or-not/data/coins.txt

# 4.9 MB                                                      
wget ftp://ftp.ensembl.org/pub/release-101/gff3/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.28.101.gff3.gz
                                                              
# 41 MB                                                       
wget ftp://ftp.ensemblgenomes.org/pub/metazoa/release-48/fasta/drosophila_melanogaster/dna/Drosophila_melanogaster.BDGP6.28.dna.toplevel.fa.gz
                                                              
# 3.7 GB                                                      
wget http://dgrp2.gnets.ncsu.edu/data/website/dgrp2.vcf

awk '{print $1"\t"$2"\t"$3"\t"$4"\t"$5"\t"$6"\t"$7"\t"$8"\t"$9}' dgrp2.vcf > dgrp2_trimmed.vcf

wget https://raw.githubusercontent.com/pmitev/to-awk-or-not/master/docs/data/gaussian.out
