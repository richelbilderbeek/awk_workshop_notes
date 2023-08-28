#!/usr/bin/awk -f

{
  data[$1] = data[$1]" "$2
}

END { 
  for (i in data) {
    print "HERE: "i, data[i]
  }
}

