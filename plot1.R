## load Data
power <- read.table(".\\data\\household_power_consumption.txt", header = TRUE, sep = ";" , dec = ".", stringsAsFactors = FALSE)
subpower <- subset(power, Date %in% c("1/2/2007","2/2/2007"))

## draw plot 1

GlobalActivePower <- as.numeric(subpower$Global_active_power)
png("plot1.png", width = 480 , height = 480)
hist(GlobalActivePower, col = "red" , main = "Global Active Power" , xlab = "Global Active Power (kilowatts)")
dev.off()