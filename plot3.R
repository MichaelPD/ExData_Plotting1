power <- read.table(unzip("household_power_consumption.zip"), 
                    header=TRUE, stringsAsFactors=FALSE, sep=";")

power <- power[power$Date == "1/2/2007"|power$Date == "2/2/2007",]

dates <- power$Date
times <- power$Time
x <- paste(dates, times)
sampleTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

png("Plot3.png", width=480, height=480)

plot(sampleTime, as.numeric(power$Sub_metering_1), 
     xlab="", ylab="Energy sub metering", type="n")
lines(sampleTime, as.numeric(power$Sub_metering_1))
lines(sampleTime, as.numeric(power$Sub_metering_2), col="red")
lines(sampleTime, as.numeric(power$Sub_metering_3), col="blue")
legend("topright", lwd=1, col=c("black","red","blue" ), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()