# We will use a package called zoo to read in the CSV file containing major US holiday dates 
# and the average temperature of those dates in New Haven. We will then generate a plot to visualize the data. 

library(zoo)
options(bitmapType='cairo')
# Set the working directory (change the NetID to your NetID)
setwd("/home/NetID/project/workshop/Intro-to-HPC/office_hour_examples/R_example")

file = "avg_temp_holidays.csv";

# Read the cvs file and save as a zoo object
avg_tmp <- read.zoo(file,header= TRUE, sep=",")

# Plot dates versus average temperatures
plot(avg_tmp, xlab = "Date", ylab = "Average temperature (°F)",type ='p')


