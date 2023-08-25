#!/usr/bin/awk -f

{ data[$4]= data[$4] + 1 }

END {
  for (i in data) print "Country: " i " count: " data[i]
}
