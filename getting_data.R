# make sure the data directory exists
if (!file.exists("data")) {dir.create("data")} 

# downloading file
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, 
              destfile = "./data/exdata-data-household_power_consumption.zip", 
              method = "curl")

# unzipping file
unzip('./data/exdata-data-household_power_consumption.zip', 
      exdir="data", overwrite=TRUE)
