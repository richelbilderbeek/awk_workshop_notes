#!/usr/bin/awk -f

BEGIN {
  print "Welcome to this text adventure!"
  location = 1
}

{
  data[$1] = $2
}

END {
  while (1) {
    print data[location]
    
    printf "What would you like to do?\n  "
    getline < "-"
    input = $0
    print "You typed:" input
    ++location
    if (location == 3) location = 1
  }
}
