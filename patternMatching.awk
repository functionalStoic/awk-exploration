# Pattern Matching
# run with `awk -F, -f patternMatching.awk 2010_Census_Populations_by_Zip_Code.csv`

# Print every 2nd line.
# Here $0 stands for the entire line.

# NR%2 == 0 { print $0} // Uncomment to run

# //--> 91371,1,73.5,0,1,1,1
#       90002,51223,25.5,24876,26347,11731,4.36
#       90004,62180,34.8,31302,30878,22547,2.73
#       90006,59185,32.4,30254,28931,18617,3.13
#       90008,32327,39.7,14477,17850,13841,2.33
#       ...
#       ...
#---

# Print all zip codes with population > 100,000
# $2 > 100000 {print $1} // Uncomment to run

# //--> Zip Code
#       90011
#       90201
#       90650
#       91331

#---

# Print all zip codes with population > 10,000 and average household size > 4
$2 > 10000 && $7 > 4 {print $1} # Uncomment to run

# // --> Zip Code
#        90001
#        90002
#        90003
#        90011
#        ...
#        ...

#---