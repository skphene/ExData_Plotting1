#set working directory
setwd("~/Desktop/DataScienceSpecialization/Course4/CourseProject1")

library(data.table)
source("CourseProject1.R")

# Plot 2
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(energydata$DateTime, energydata$Global_active_power, ylab='Global Active Power (kilowatts)', xlab='', type='l')
dev.off()