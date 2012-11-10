# Kernel Density Plot
data <- scan(file = "data/digland_read_len_hist/data.txt");
mean=floor(mean(data))
d <- density(data) # returns the density data
str = paste("Size of Read (bp) [Average ", mean)
str = paste(str, "bp]")
ggplot(d, main="Kernel Density of Digestive Gland Reads", xlab=str, ylab="Density Function") # plots the results 