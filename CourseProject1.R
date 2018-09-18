#set working directory
setwd("~/Desktop/DataScienceSpecialization/Course4/CourseProject1")

library(data.table)
library(plyr)
library(lubridate)

# Read data into R and clean it up
dataclass <- c(Global_active_power="numeric", Global_reactive_power="numeric", Voltage="numeric", Global_intensity="numeric", Sub_metering_1="numeric", Sub_metering_2="numeric", Sub_metering_3="numeric")
data <- read.table("./household_power_consumption.txt", header = TRUE, sep=";",dec=".", stringsAsFactors=FALSE, na.strings = "?", colClasses = dataclass)
energydata <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
energydata <- na.omit(energydata)
as.Date(energydata$Date)
strptime(energydata$Time, format = "%H:%M:%S")
energydata$DateTime <- as.POSIXlt(dmy(energydata$Date)+hms(energydata$Time)) 
