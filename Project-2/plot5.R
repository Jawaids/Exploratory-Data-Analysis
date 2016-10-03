# How have emissions from motor vehicle sources changed from 1999¨C2008 in Baltimore City?

setwd("C:/OPT/Data/Coursera/Data_Exp_Ana/Project-2")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
subset <- NEI[NEI$fips == "24510", ] 

par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "./plot5.png", width = 504, height = 504, units = "px")
motor <- grep("motor", SCC$Short.Name, ignore.case = T)
motor <- SCC[motor, ]
motor <- subset[subset$SCC %in% motor$SCC, ]
motorEmissions <- aggregate(motor$Emissions, list(motor$year), FUN = "sum")

plot(motorEmissions, type = "l", xlab = "Year", 
     main = "Total Emissions From Motor Vehicle Sources\n from 1999 to 2008 in Baltimore City", 
     ylab = expression('Total PM'[2.5]*" Emission"))
dev.off()
