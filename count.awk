#!/usr/bin/awk -f

{ ++data[$1] }

END {
  for (i in data) print "Country: " i " count: " data[i]
}
