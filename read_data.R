### Calculating the memory before loading the data
round(2075259*9*8/2^20/1024, 2)  # GB

### Loading the data
data <- read.table("household_power_consumption.txt",header = T,sep = ";",stringsAsFactors = F,na.strings = "?")

### Converting the date variable to date class
data$Date <- strptime(data$Date, "%d/%m/%Y")
library(tidyverse)

### Subset the date from 2007-02-01 to 2007-02-02
t <- data %>% filter(Date >= "2007-02-01" & Date <= "2007-02-02") 

### Converting the date/time variable to date/time class
dateTime <- strptime(paste(t$Date, t$Time),"%Y-%m-%d %H:%M:%S")

### Generating a new data set
final <- cbind(dateTime, select(t, Global_active_power : Sub_metering_3))

