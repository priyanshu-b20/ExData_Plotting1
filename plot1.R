df <- read.table('../input/household_power_consumption.txt', sep=';', header=TRUE, stringsAsFactors=FALSE,dec=".")

df <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

png("plot1.png", width=480, height=480)

with(df, hist(as.numeric(Global_active_power), xlab = 'Global Active Power (kilowatts)', col='red', main='Global Active Power'))

dev.off()

