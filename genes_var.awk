#!/usr/bin/awk -f
#
#

FNR==NR{
    a[$2]="T";
    next
}
FNR!=NR
{
    hits=0;
    for(n=$4; n<=$5; ++n) {
        if (a[n] == "T") {
            hits+=1
        }
    }
    if (hits>0) {
        print hits "\t" $0 > "haveSNPINDEL_Drosophila_chr4.gff"
    }
    else {
        print $0 > "noSNPINDEL_Drosophila_chr4.gff"
    }
}
