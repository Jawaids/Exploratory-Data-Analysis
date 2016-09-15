# Setting working directory.
setwd("C:/OPT/Data/Coursera/Data_Exp_Ana")

# Reading data into R.
data1 <- read.table('household_power_consumption.txt', sep=";", header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

# Subsetting the full data to obtain the data related to two days.
data2 <- subset(data1, (data1$Date == "1/2/2007" | data1$Date== "2/2/2007"))

# Changing the class of Date variable from character to Date.
data2$Date <- as.Date(data2$Date, format = "%d/%m/%Y")

# Creating the plot1.
png("plot1.png", width = 504, height = 504)
hist(data2$Global_active_power, main="Global Active Power",col='red',ylab= "Frequency", xlab="Global Active Power (kilowatts)")
dev.off()
