## Plots graph 2
plot2 <- function()
{
  source(paste(paste(getwd(),"/", sep=""), "plot1.R", sep=""))
  dt <- getDt();
  plot(x=dt$dateTime, y=dt$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="")
  saveAndClose("plot2")
}
