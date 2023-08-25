#!/usr/bin/awk -f

BEGIN {
  print "Welcome to this text adventure!"
  location = 1
}

$1 == location { $1 = ""; print $0 }

{
    printf "What would you like to do?\n  "
    getline < "-"
    # system("")   # flush output
    # getline input
    input = $0
    print "You typed:" input
    ++location
    if (location == 3) location = 1
}
