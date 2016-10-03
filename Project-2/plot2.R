# Have total emissions from PM2.5 decreased in the Baltimore City, 
# Maryland (fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.

setwd("C:/OPT/Data/Coursera/Data_Exp_Ana/Project-2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
subset <- NEI[NEI$fips == "24510", ] 

par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "./plot2.png", 
    width = 504, height = 504, units = "px")
totalEmissions <- aggregate(subset$Emissions, list(subset$year), FUN = "sum")

plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in Baltimore City from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()
