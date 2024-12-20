### plot 1
setwd("/Users/mac/Documents/Exploratory_Data_Analysis/ExData_Plotting1")

file_path <- "/Users/mac/Documents/Exploratory_Data_Analysis/household_power_consumption.txt"
power_data <- read.table(file_path, header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
power_data$Date <- as.Date(power_data$Date, format = "%d/%m/%Y")
subset_data <- subset(power_data, Date >= as.Date("2007-02-01") & 
                        Date <= as.Date("2007-02-02"))
png(filename = "plot1.png", width = 480, height = 480)
hist(subset_data$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     col = "red")
dev.off()

