source("read_data.R")


png(file = "plot3.png", 480, 480)
with(final, {plot(dateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
     lines(dateTime, Sub_metering_2, col="red")
     lines(dateTime, Sub_metering_3, col="blue")})
legend("topright", col = c("black", "red", "blue"), lty = 1, legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
