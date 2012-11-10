# Kernel Density Plot

neur <- data.frame(scan(file = "data/untrimmed/neural_lens_untrimmed"));
d <- density(neur) # returns the density data
dig <- scan(file = "data/untrimmed/digest_lens_untrimmed");
d2 <- density(dig) # returns the density data

print("Mean bp for Untrimmed Neural Tissue Reads")
print(mean(neur))
print("Mean bp for Untrimmed Digestive Gland Reads")
print(mean(dig))

plot(d, xlim=c(0,610), ylim=c(0,0.004), main="Kernel Density of 454 Reads", xlab="Read Length (bp)", ylab="Density Function", lty=4)
lines(d2, lty=1) 

legend('topright','groups', legend=c("Neural Tissue", "Digestive Gland"), lty=c(4,1),bty ="n")