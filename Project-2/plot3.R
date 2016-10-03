# Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, 
# which of these four sources have seen decreases in emissions from 1999¨C2008 for Baltimore City? 
# Which have seen increases in emissions from 1999¨C2008? 
# Use the ggplot2 plotting system to make a plot answer this question.

# Check if both data exist in the environment. If not, load the data.

library(ggplot2)

setwd("C:/OPT/Data/Coursera/Data_Exp_Ana/Project-2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
subset <- NEI[NEI$fips == "24510", ] 

par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "./plot3.png", 
    width = 504, height = 504, units = "px")
g <- ggplot(subset, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
dev.off()
