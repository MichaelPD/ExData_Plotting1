power <- read.table(unzip("household_power_consumption.zip"), 
                    header=TRUE, stringsAsFactors=FALSE, sep=";")

power <- power[power$Date == "1/2/2007"|power$Date == "2/2/2007",]

dates <- power$Date
times <- power$Time
x <- paste(dates, times)
sampleTime <- strptime(x, "%d/%m/%Y %H:%M:%S")


png("Plot2.png", width=480, height=480)

plot(sampleTime, as.numeric(power$Global_active_power), 
     xlab="", ylab="Global Active Power (kilowatts)", type="n")

lines(sampleTime, as.numeric(power$Global_active_power))

dev.off()