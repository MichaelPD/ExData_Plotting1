power <- read.table(unzip("household_power_consumption.zip"), 
                    header=TRUE, stringsAsFactors=FALSE, sep=";")

power <- power[power$Date == "1/2/2007"|power$Date == "2/2/2007",]

png("Plot1.png", width=480, height=480)
hist(as.numeric(power$Global_active_power),col="red", ylab="Frequency",
     xlab="Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()