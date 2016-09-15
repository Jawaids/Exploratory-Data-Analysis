# Setting working directory.
setwd("C:/OPT/Data/Coursera/Data_Exp_Ana")

# Reading data into R.
data1 <- read.table('household_power_consumption.txt', sep=";", header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

# Subsetting the full data to obtain the data related to two days.
data2 <- subset(data1, (data1$Date == "1/2/2007" | cons$Date== "2/2/2007"))

# Changing the class of Date variable from character to Date.
data2$Date <- as.Date(data2$Date, format = "%d/%m/%Y")

# Combining the Date and Time variable and creating a new column in dataset named "DateTime".
data2$DateTime <- as.POSIXct(paste(data2$Date, data2$Time))

# Creating the plot2.
png("plot2.png", width = 504, height = 504)
plot(data2$DateTime, data2$Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
