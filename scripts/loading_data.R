library(sqldf)

df <- read.csv.sql("./data/household_power_consumption.txt",
                   sql = "SELECT * FROM file WHERE Date IN ('1/2/2007', '2/2/2007')",
                   sep = ";")

head(df[df$Date == "?",]) # No missing values here
head(df[df$Time == "?",]) 
anyNA(df) # No NA in numeric columns


df$Date <- as.character(df$Date)
df$Time <- as.character(df$Time)

df$DateTime <- paste(df$Date, df$Time)

df$DateTime <- as.POSIXct(paste(df$Date, df$Time), format = "%d/%m/%Y %H:%M:%S")


df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df$Time <- strptime(df$Time, format = "%H:%M:%S")


head(paste(df$Date, df$Time))
