# Kernel Density Plot

neur <- scan(file = "data/neural_read_len_hist/data.txt");
d <- density(neur) # returns the density data
dig <- scan(file = "data/digland_read_len_hist/data.txt");
d2 <- density(dig) # returns the density data

print("Mean bp for Neural Tissue Reads")
print(mean(neur))
print("Mean bp for Digestive Gland Reads")
print(mean(dig))

plot(d, xlim=c(0,610), ylim=c(0,0.004), main="Kernel Density of 454 Reads", xlab="Read Length (bp)", ylab="Density Function", lty=4)
lines(d2, lty=1) 

legend('topright','groups', legend=c("Neural Tissue", "Digestive Gland"), lty=c(4,1),bty ="n")