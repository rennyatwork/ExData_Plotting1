#setwd("C:\\Users\\renato\\Documents\\MOOC\\2014\\course04 - ExploratoryDataAnalysis\\Assignment-01\\ExData_Plotting1")
#require(sqldf)
#read.csv.sql(paste(paste(getwd(),"/exdata_data_household_power_consumption", sep=""),"/household_power_consumption.txt", sep=""), sql = "select * from file", header=T, sep=";")
#dt <- read.csv.sql(paste(paste(getwd(),"/exdata_data_household_power_consumption", sep=""),"/household_power_consumption.txt", sep=""), sql = "select * from file WHERE Date = '1/2/2007' OR Date ='2/2/2007' ", header=T, sep=";")
#hist(dt$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power')
#dev.copy(png, "plot1.png", width=480, height=480)
# dev.off()

#plot2
#dt <- transform(dt, Date = factor(Date))
# plot(Global_active_power ~ Date, dt, xlab='Date', ylab="Global Active Power")
#dt$wkday <- weekdays(as.Date(dt$Date, '%d/%m/%Y'))
#plot(x=dt$dateTime, y=dt$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="")
#dev.copy(png, "plot2.png", width=480, height=480)
# dev.off()

#plot3
#plot(x=dt$dateTime, y=dt$Sub_metering_1, type='l' ,ylab="Energy sub metering", xlab="")
#points(x=dt$dateTime, y=dt$Sub_metering_2, type='l', col='red')
#points(x=dt$dateTime, y=dt$Sub_metering_3, type='l', col='blue')
#legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lwd=1)