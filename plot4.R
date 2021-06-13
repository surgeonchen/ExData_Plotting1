source("read_data.R")


png(file = "plot4.png", 480, 480)
par(mfrow = c(2,2))
with(final, {plot(dateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
             plot(dateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
             plot(dateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
             lines(dateTime, Sub_metering_2, col="red")
             lines(dateTime, Sub_metering_3, col="blue")
             legend("topright", col = c("black", "red", "blue"), lty = 1, lwd =2,bty = "n", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
             plot(dateTime, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")})
dev.off()
