# awk_workshop_notes
My notes for an AWK workshop

 * [Workshop instructions](https://uppmax.uu.se/support-sv/courses-and-workshops/awk-workshop)
 * [To AWK or not](https://pmitev.github.io/to-awk-or-not/)


```
awk '$1 == "4" && $3 ~ /SNP/ { print $0 }' dgrp2_trimmed.vcf > snps.vcf
awk '$1 == "4" && $3 ~ /DEL/ { print $0 }' dgrp2_trimmed.vcf > dels.vcf
awk '$1 == "4" && $3 ~ /DEL|INS/ { print $0 }' dgrp2_trimmed.vcf > indels.vcf


# Tally the different SNP transitions
awk '$1 == "4" { ++ts[$4$5] } END { for(t in ts) { print t, ts[t] } }' snps.vcf | awk 'BEGIN  { FIELDWIDTHS = "1 1 77" } { print $1"->"$2""$3}' | sort
```
