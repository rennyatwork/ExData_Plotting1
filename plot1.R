##Plots graph1
## function to get datatable
## function to save and close file

initialize <-function()
{
  require(sqldf)
  #read.csv.sql(paste(paste(getwd(),"/exdata_data_household_power_consumption", sep=""),"/household_power_consumption.txt", sep=""), sql = "select * from file", header=T, sep=";")  
}

getDt <-function()
{  
   dt <- read.csv.sql(paste(paste(getwd(),"/exdata_data_household_power_consumption", sep=""),"/household_power_consumption.txt", sep=""), sql = "select * from file WHERE Date = '1/2/2007' OR Date ='2/2/2007' ", header=T, sep=";")
   dt <- transform(dt, Date = factor(Date))
   dt$dateTime <- strptime(paste(dt$Date, dt$Time), "%d/%m/%Y %H:%M:%S")    
  
  return (dt)
}

plot1 <- function()
{
  dt<-getDt()
  hist(dt$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', main='Global Active Power')
  #dev.copy(png, "plot1.png", width=480, height=480)
  # dev.off()
  saveAndClose("plot1")
}

saveAndClose <- function(pName)
{
  dev.copy(png, paste(pName, ".png", sep=""), width=480, height=480)
  dev.off()
}