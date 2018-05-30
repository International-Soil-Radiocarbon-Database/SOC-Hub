library(dplyr)

#bring in CSV data from BeyondClay
bc <- read.csv("/Users/hh/Downloads/Final_Cleaned_Beyond_Clay1_Dataset.csv")

# Check out the column names and/or view the file
colnames(bc)
View(bc)

#Since there is a state_code column we can subset for Hawaii points using that
bc <- filter(bc, state_code == "HI")

# Alternatively you can subest by lat/long boundaries
# bc <- bc[(bc$latitude_decimal_degrees > 16 & bc$latitude_decimal_degrees < 25),]
# bc <- bc[(bc$longitude_decimal_degrees > -165 & bc$longitude_decimal_degrees < -150),]

# The output of either is 554 points. 

# create a csv of new Hawaii subset
write.csv(bc, file="/Users/hh/Downloads/hawaii_bc.csv")


# Load in the Beyond Clay hawaii subset
hi_bc <- read.csv("/Users/hh/Downloads/bc_hi_ccap.csv")
View(hi_bc)
# look at how many years have data in the set
unique(hi_bc$Year)


unique(bc2$state_code)


hi_bc <- read.csv("/Users/hh/Downloads/Beyond_Clay_hawaii.csv")
View(hi_bc)
colnames(hi_bc)
