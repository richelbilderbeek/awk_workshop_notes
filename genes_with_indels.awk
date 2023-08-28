#!/usr/bin/awk -f
#
# Usage:
#
#   ./genes_with_indels.awk indels.vcf Drosophila_melanogaster.chr4.gff3
#
BEGIN {
  if (ARGC != 3) {
    print "ERROR! Please call this script with two filenames:"
    print ""
    print "  ./genes_with_indels.awk indels.vcf Drosophila_melanogaster.chr4.gff3"
    print ""
    print "ARGC: "ARGC
    exit
  }
  indel_filename=ARGV[1]
  annotation_filename=ARGV[2]
  indel_filename_exists=getline < indel_filename >= 0
  annotation_filename_exists=getline < annotation_filename >= 0
  {
    if (! indel_filename_exists) {
      print "indel_filename called '"indel_filename"' does not exist"
      exit
    }
  }
  {
    if (! annotation_filename_exists) {
      print "annotation_filename called '"annotation_filename"' does not exist"
      exit 
    }
  }
}


# First file, indels.vcf
FNR==NR{
  # Second column is the position
  from_pos=$2
  to_pos=$2+length($4)
  for (i = from_pos; i <= to_pos; ++i)
  {
    pos_has_hit[i] = "T";
  }
}

FNR!=NR
{
    next
    hits=0;
    for(n=$4; n<=$5; ++n) {
        if (a[n] == "T") {
            ++hits
        }
    }
    if (hits>0) {
        print hits "\t" $0 > "haveSNPINDEL_Drosophila_chr4.gff"
    }
    else {
        print $0 > "noSNPINDEL_Drosophila_chr4.gff"
    }
}

