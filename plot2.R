## load Data
power <- read.table(".\\data\\household_power_consumption.txt", header = TRUE, sep = ";" , dec = ".", stringsAsFactors = FALSE)
subpower <- subset(power, Date %in% c("1/2/2007","2/2/2007"))

## draw plot 3

GlobalActivePower <- as.numeric(subpower$Global_active_power)
submetering1 <- as.numeric(subpower$Sub_metering_1)
submetering2 <- as.numeric(subpower$Sub_metering_2)
submetering3 <- as.numeric(subpower$Sub_metering_3)

date <- strptime(paste(subpower$Date,subpower$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
png("plot2.png" , width = 480 ,height = 480)
plot(date ,GlobalActivePower ,type = "n" , ylab= "Energy sub metering", xlab = "" )
dev.off()