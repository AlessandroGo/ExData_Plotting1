png("./outputs/plot_4.png", width = 480, height = 480)

par(mfrow = c(2,2))

# First row first column
plot(df$DateTime, df$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)",
     xaxt = "n")  

ticks <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))

# Side means start bottom left
axis(side = 1, at = ticks, labels = c("Thursday", "Friday", "Saturday"))

# First row second column
plot(df$DateTime, df$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage",
     xaxt = "n")  

ticks <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))

axis(side = 1, at = ticks, labels = c("Thursday", "Friday", "Saturday"))

# Second row first column
plot(df$DateTime, df$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(df$DateTime, df$Sub_metering_2, col = "red")
lines(df$DateTime, df$Sub_metering_3, col = "blue")

ticks <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))
axis(side = 1, at = ticks, labels = c("Thursday", "Friday", "Saturday"))

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lty = 1)

# Second row second column
plot(df$DateTime, df$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power",
     xaxt = "n")  

ticks <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))

# Side means start bottom left
axis(side = 1, at = ticks, labels = c("Thursday", "Friday", "Saturday"))

dev.off()
