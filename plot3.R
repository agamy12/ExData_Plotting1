## load Data
power <- read.table(".\\data\\household_power_consumption.txt", header = TRUE, sep = ";" , dec = ".", stringsAsFactors = FALSE)
subpower <- subset(power, Date %in% c("1/2/2007","2/2/2007"))

## draw plot 3

GlobalActivePower <- as.numeric(subpower$Global_active_power)
submetering1 <- as.numeric(subpower$Sub_metering_1)
submetering2 <- as.numeric(subpower$Sub_metering_2)
submetering3 <- as.numeric(subpower$Sub_metering_3)

date <- strptime(paste(subpower$Date,subpower$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot3.png" , width = 480 ,height = 480)
plot(date ,submetering1 ,type = "l" , ylab= "Energy sub metering", xlab = "" )
lines(date , submetering2 , type = "l" , col ="red")
lines(date , submetering3 , type = "l" , col ="blue")
legend("topright", lty = 1 ,lwd = 2.5 , col = c("black","red", "blue"), legend = c("sub_metering_1","sub_metering_2","sub_metering_3"))
dev.off()