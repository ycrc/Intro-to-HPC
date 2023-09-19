# We will use a package called zoo to read in the CSV file containing major US holiday dates 
# and the average temperature of those dates in New Haven. We will then generate a plot to visualize the data. 

library(zoo)

# Make sure that avg_temp_holidays.csv is in the same directory as zoo_example.R.
# If they are not in the same directory, specify a path to the CSV file, e.g. file = "/home/NETID/project/R_data/avg_temp_holidays.csv" 
file = "avg_temp_holidays.csv";

# Read the cvs file and save as a zoo object
avg_tmp <- read.zoo(file,header= TRUE, sep=",")

# Plot dates versus average temperatures
plot(avg_tmp, xlab = "Date", ylab = "Average temperature (°F)",type ='p')


