png("plot1.png", width=480, height=480)
# Reading the data from the file
Power_Consumption_Data <-read.table("household_power_consumption.txt", header=T, sep=";", na.strings = "?")
Power_Consumption_Data_subset <-rbind(Power_Consumption_Data[Power_Consumption_Data$Date=="1/2/2007",],Power_Consumption_Data[Power_Consumption_Data
                                                                                                                              $Date=="2/2/2007",])
# Constructing the plot
hist(Power_Consumption_Data_subset$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()