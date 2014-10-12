##Plots graph 4
plot4 <- function()
{  
  source(paste(paste(getwd(),"/", sep=""), "plot3.R", sep=""))
  dt <- getDt();
  
  par(mfrow=c(2,2), mar=c(2,4,1,2))
  # first graph:
    plot(x=dt$dateTime, y=dt$Global_active_power, type='l' ,ylab="Global Active Power", xlab="")
  # second graph:
    plot(x=dt$dateTime, y=dt$Voltage, type='l' ,ylab="Voltage", xlab="datetime")
  # third graph: see plot 3
    plot3("n", 0.58)
  # fourth graph
    plot(x=dt$dateTime, y=dt$Global_reactive_power, type='l' ,ylab="Global Active Power", xlab="")
  
    saveAndClose("plot4")
}