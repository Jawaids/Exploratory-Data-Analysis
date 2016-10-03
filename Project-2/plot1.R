# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from
# all sources for each of the years 1999, 2002, 2005, and 2008.

setwd("C:/OPT/Data/Coursera/Data_Exp_Ana/Project-2")

library(grDevices)

NEI <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("./Source_Classification_Code.rds")

par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "./plot1.png",width = 504, height = 504,units = "px")
totalEmissions <- aggregate(NEI$Emissions, list(NEI$year), FUN = "sum")
# options(scipen=0)
# options(scipen=999)
plot(totalEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions in the United States from 1999 to 2008", 
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()
