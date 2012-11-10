# Kernel Density Plot

dig_clc <- read.table("data/ClcBio_Neural.dat", header=T, sep=" ");
dig_new <- read.table("data/Newbler_Neural.dat", header=T, sep=" ");
dig_seq <- read.table("data/Seqman_Neural.dat", header=T, sep=" ");

clc_max = tail(dig_clc$HITS, n=1);
new_max = tail(dig_new$HITS, n=1);
seq_max = tail(dig_seq$HITS, n=1);

funclc <- function(x) (x/4614)
funnew <- function(x) (x/1302)
funseq <- function(x) (x/2570)

eCLC <- lapply(dig_clc$EVALUE, log10)
eNEW <- lapply(dig_new$EVALUE, log10)
eSEQ <- lapply(dig_seq$EVALUE, log10)

percCLC <- lapply(dig_clc$HITS, funclc);
percNEW <- lapply(dig_new$HITS, funnew);
percSEQ <- lapply(dig_seq$HITS, funseq);

pdf("numberofhits.pdf")

plot(eCLC, dig_clc$HITS, type="n",font.main = 1, main="Number of contigs with hits vs nr at expect values for neural tissue", xlab="Evalue (1e^x)", ylab="Number of Top Hits below E-value")

abline(v=log10(10),col = "gray80")
abline(v=log10(1e-3),col = "gray60")
abline(v=log10(1e-10),col = "gray20")

lines(eCLC, dig_clc$HITS, lty=1)
lines(eNEW, dig_new$HITS, lty=2)
lines(eSEQ, dig_seq$HITS, lty=3)

legend('topleft','groups', legend=c("CLCBio", "Newbler", "Seqman"), lty=c(1,2,3),bty ="n")
