# Special variables and built-in functions

# NF : Number of fields in a line
# NR : Line number
# $0 : The entire input line
# length : gives number of characters in a string 

# Compute the average household size.
# Total population / Total households

# run with `tail -n +2 2010_Census_Populations_by_Zip_Code.csv | awk -F, -f stats.awk`

{ s += $2; h += $6;}
END { 
  print "Total population:", s,
  "\nTotal households:", h,
  "\nAverage household size:", s/h,
  "\nAverage population per zip code:", s/NR
}

# // ->
# Total population: 10603988
# Total households: 3497698
# Average household size: 3.0317
# Average population per zip code: 33241.3 