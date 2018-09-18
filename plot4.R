#set working directory
setwd("~/Desktop/DataScienceSpecialization/Course4/CourseProject1")

library(data.table)
source("CourseProject1.R")

# Plot 4
png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2))

# Top Left Plot
plot(energydata$DateTime, energydata$Global_active_power, ylab='Global Active Power', xlab='', type='l')

# Top Right Plot
plot(energydata$DateTime, energydata$Voltage, xlab='datetime', ylab='Voltage', type='l')

# Bottom Left Plot
lncol <- c('black', 'red', 'blue')
lbls <- c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
plot(energydata$DateTime, energydata$Sub_metering_1, type='l', col=lncol[1], xlab='', ylab='Energy sub metering')
lines(energydata$DateTime, energydata$Sub_metering_2, col=lncol[2])
lines(energydata$DateTime, energydata$Sub_metering_3, col=lncol[3])
legend('topright', legend=lbls, col=lncol, lty='solid')


# Bottom Right Plot
plot(energydata$DateTime, energydata$Global_reactive_power, xlab='datetime', ylab='Global_reactive_power', type='l')
dev.off()
