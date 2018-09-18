#set working directory
setwd("~/Desktop/DataScienceSpecialization/Course4/CourseProject1")

library(data.table)
source("CourseProject1.R")

# Plot 1
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(energydata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()
