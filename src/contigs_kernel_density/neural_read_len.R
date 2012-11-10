# Kernel Density Plot
data <- scan(file = "/home/dominic/Dropbox/thesis/Figures/neural_read_len_hist/data.txt");
mean=floor(mean(data))
d <- density(data) # returns the density data
str = paste("Size of Read (bp) [Average ", mean)
str = paste(str, "bp]")
plot(d, main="Kernel Density of Neural Tissue Reads", xlab=str, ylab="Density Function") # plots the results 