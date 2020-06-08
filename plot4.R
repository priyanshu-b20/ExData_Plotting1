df <- read.table('../input/household_power_consumption.txt', sep=';', header=TRUE, stringsAsFactors=FALSE,dec=".")

df <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

with(df, plot(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),as.numeric(Global_active_power),type='l',xlab='', ylab = 'Global Active Power'))

with(df, plot(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),as.numeric(Voltage),type='l',xlab='datetime', ylab = 'Voltage'))

with(df, plot(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),Sub_metering_1,type='l',xlab='', ylab = 'Energy sub metering'))
with(df, points(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),Sub_metering_2,type='l',xlab='', ylab = 'Energy sub metering',col='red'))
with(df, points(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),Sub_metering_3,type='l',xlab='', ylab = 'Energy sub metering',col='blue'))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

with(df, plot(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),as.numeric(Global_reactive_power),type='l',xlab='datetime', ylab='Global_reactive_power'))


dev.off()