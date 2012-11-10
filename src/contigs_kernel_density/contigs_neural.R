# Kernel Density Plot

clc <- scan(file = "data/contigs_neural/clcbio_digest");
clcD <- density(clc) # returns the density data
newb <- scan(file = "data/contigs_neural/newbler_digest");
newbD <- density(newb) # returns the density data
seq <- scan(file = "data/contigs_neural/seqman_digest");
seqD <- density(seq) # returns the density data

print("Mean bp for CLCBio")
print(mean(clc))
print("Mean bp for Newbler")
print(mean(newb))
print("Mean bp for Seqman")
print(mean(seq))

pdf("contigs_neural.pdf")

plot(clcD, xlim=c(0,3000), ylim=c(0,0.003), main="Kernel Density of Neural Tissue Contigs", xlab="Contig Length (bp)", ylab="Density Function", lty=4)
lines(newbD, lty=1) 
lines(seqD, lty=3) 

legend('topright','groups', legend=c("CLCBio", "Newbler", "Seqman NG"), lty=c(4,1,3),bty ="n")