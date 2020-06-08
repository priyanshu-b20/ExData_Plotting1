df <- read.table('../input/household_power_consumption.txt', sep=';', header=TRUE, stringsAsFactors=FALSE,dec=".")

df <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot2.png", width=480, height=480)

with(df, plot(strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),as.numeric(Global_active_power),type='l',xlab='', ylab = 'Global Active Power (kilowatts)'))

dev.off()