source("read_data.R")

png(file = "plot2.png", 480, 480)
with(final, plot(dateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()
