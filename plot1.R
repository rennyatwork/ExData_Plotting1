#setwd("C:\\Users\\renato\\Documents\\MOOC\\2014\\course04 - ExploratoryDataAnalysis\\Assignment-01\\ExData_Plotting1")
#require(sqldf)
#read.csv.sql(paste(paste(getwd(),"/exdata_data_household_power_consumption", sep=""),"/household_power_consumption.txt", sep=""), sql = "select * from file", header=T, sep=";")
#dt <- read.csv.sql(paste(paste(getwd(),"/exdata_data_household_power_consumption", sep=""),"/household_power_consumption.txt", sep=""), sql = "select * from file WHERE Date = '1/2/2007' OR Date ='2/2/2007' ", header=T, sep=";")
#hist(dt$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power')
#dev.copy(png, "plot1.png", width=480, height=480)
# dev.off()