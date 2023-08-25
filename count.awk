#!/usr/bin/awk -f

{ ++data[$3] }

END {
  for (i in data) print "Country: " i " count: " data[i]
}
