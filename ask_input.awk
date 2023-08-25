awk '
    BEGIN {
        printf "enter filename: "
        getline < "-"
        input = $0
        print "You typed:" input
    }
'
