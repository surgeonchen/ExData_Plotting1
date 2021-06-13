source("read_data.R")
 
png(file = "plot1.png", 480, 480)
hist(final$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.off()
