#!/usr/bin/awk -f
#
# Usage:
#
#   ./clean_phylo_data.awk names.dmp 
#
BEGIN {
  if (ARGC != 2) {
    print "ERROR! Please call this script with one filename:"
    print ""
    print "  ./clean_phylo_data.awk names.dmp "
    print ""
    print "ARGC: "ARGC
    exit
  }
  filename=ARGV[1]
  filename_exists=getline < filename >= 0
  {
    if (! filename_exists) {
      print "filename called '"filename"' does not exist"
      exit
    }
  }
}


{
  scientific_name
  common_name
  genbank_common_name  
}

taxonID    scientific_name    common_name    genbank_common_name
10090      Mus musculus       mouse          house mouse
