png("./outputs/plot_2.png", width = 480, height = 480)

# No x-axis
plot(df$DateTime, df$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)",
     xaxt = "n")  

ticks <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))

# Side means start bottom left
axis(side = 1, at = ticks, labels = c("Thursday", "Friday", "Saturday"))


dev.off()