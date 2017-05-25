png("plot3.png", width=480, height=480)
# Reading the data from the file
Power_Consumption_Data <-read.table("household_power_consumption.txt", header=T, sep=";", na.strings = "?")
Power_Consumption_Data_subset <-rbind(Power_Consumption_Data[Power_Consumption_Data$Date=="1/2/2007",],Power_Consumption_Data[Power_Consumption_Data
                                                                                                                              $Date=="2/2/2007",])
Power_Consumption_Data_subset$DateTime <- with(Power_Consumption_Data_subset, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M"))
# Constructing the plot
plot(Power_Consumption_Data_subset$Sub_metering_1 ~ Power_Consumption_Data_subset$DateTime, type="l", xlab= "", ylab="Energy Sub Metering")
lines(Power_Consumption_Data_subset$Sub_metering_2 ~ Power_Consumption_Data_subset$DateTime, col = 'Red')
lines(Power_Consumption_Data_subset$Sub_metering_3 ~ Power_Consumption_Data_subset$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
