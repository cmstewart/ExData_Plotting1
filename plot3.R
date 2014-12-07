# data manually subsetted so that it only includes the two
# days referenced in the assignment ("We will only be using data 
# from the dates 2007-02-01 and 2007-02-02. One alternative is to 
# read the data from just those dates rather than reading in the 
#entire dataset and subsetting to those dates.")

data <- read.table("household_power_consumption_subset.txt", header = TRUE)
data$DateTime = strptime( apply( data[ , c("Date","Time") ], 1, paste, collapse=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
with (data, {plot(DateTime,Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
       lines(DateTime,Sub_metering_2,col='Red')
       lines(DateTime,Sub_metering_3,col='Blue')
})
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1, lwd = 1)
dev.off()

