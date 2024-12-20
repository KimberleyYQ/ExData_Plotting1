### plot 3
setwd("/Users/mac/Documents/Exploratory_Data_Analysis/ExData_Plotting1")
file_path <- "/Users/mac/Documents/Exploratory_Data_Analysis/ExData_Plotting1/household_power_consumption.txt"
power_data <- read.table(file_path, header = TRUE, sep = ";", 
                         na.strings = "?", stringsAsFactors = FALSE)
power_data$DateTime <- strptime(paste(power_data$Date, power_data$Time), 
                                format="%d/%m/%Y %H:%M:%S")
power_data$Date <- as.Date(power_data$Date, format = "%d/%m/%Y")
subset_data <- subset(power_data, Date >= as.Date("2007-02-01") & 
                        Date <= as.Date("2007-02-02"))
png(filename = "plot3.png", width = 480, height = 480)
plot(subset_data$DateTime, subset_data$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering", col = "black")
lines(subset_data$DateTime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$DateTime, subset_data$Sub_metering_3, col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1)
dev.off()
