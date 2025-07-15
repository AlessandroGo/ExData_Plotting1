png("./outputs/plot_3.png", width = 480, height = 480)

plot(df$DateTime, df$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering", xaxt = "n")
lines(df$DateTime, df$Sub_metering_2, col = "red")
lines(df$DateTime, df$Sub_metering_3, col = "blue")

ticks <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))
axis(side = 1, at = ticks, labels = c("Thursday", "Friday", "Saturday"))

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"), lty = 1)

dev.off()