# data manually subsetted so that it only includes the two
# days referenced in the assignment ("We will only be using data 
# from the dates 2007-02-01 and 2007-02-02. One alternative is to 
# read the data from just those dates rather than reading in the 
#entire dataset and subsetting to those dates.")

data <- read.table("household_power_consumption_subset.txt", header = TRUE)
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequecy", main = "Global Active Power", col = "red")
dev.off()

