plot3 <- function()
{
  source(paste(paste(getwd(),"/", sep=""), "plot1.R", sep=""))
  dt <- getDt();
  plot(x=dt$dateTime, y=dt$Sub_metering_1, type='l' ,ylab="Energy sub metering", xlab="")
  points(x=dt$dateTime, y=dt$Sub_metering_2, type='l', col='red')
  points(x=dt$dateTime, y=dt$Sub_metering_3, type='l', col='blue')
  legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black', 'red', 'blue'), lwd=1)
  saveAndClose("plot3")
}