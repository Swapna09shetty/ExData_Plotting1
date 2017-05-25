# Reading the data from the file
Power_Consumption_Data <-read.table("household_power_consumption.txt", header=T, sep=";", na.strings = "?")
Power_Consumption_Data_subset <-rbind(Power_Consumption_Data[Power_Consumption_Data$Date=="1/2/2007",],Power_Consumption_Data[Power_Consumption_Data
                                                                                                                              $Date=="2/2/2007",])