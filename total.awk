# Computing some statistics
# run with `awk -F, -f total.awk 2010_Census_Populations_by_Zip_Code.csv`

{ s += $2 }
END { print "Total population:", s }

# // -> Total population: 10603988