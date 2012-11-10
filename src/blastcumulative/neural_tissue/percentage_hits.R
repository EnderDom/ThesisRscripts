# Kernel Density Plot

dig_clc <- read.table("data/ClcBio_Neural.dat", header=T, sep=" ");
dig_new <- read.table("data/Newbler_Neural.dat", header=T, sep=" ");
dig_seq <- read.table("data/Seqman_Neural.dat", header=T, sep=" ");

clc_max = tail(dig_clc$HITS, n=1);
new_max = tail(dig_new$HITS, n=1);
seq_max = tail(dig_seq$HITS, n=1);

funclc <- function(x) (x/clc_max)
funnew <- function(x) (x/new_max)
funseq <- function(x) (x/seq_max)

eCLC <- lapply(dig_clc$EVALUE, log10)
eNEW <- lapply(dig_new$EVALUE, log10)
eSEQ <- lapply(dig_seq$EVALUE, log10)

percCLC <- lapply(dig_clc$HITS, funclc);
percNEW <- lapply(dig_new$HITS, funnew);
percSEQ <- lapply(dig_seq$HITS, funseq);

pdf("percentage_hits.pdf")

plot(eCLC, percCLC, type="n",font.main = 1, main="Percentage of hits vs nr at expect values for neural tissue", xlab="Evalue (1e^x)", ylab="% Hits below E-value")

abline(v=log10(10),col = "gray80")
abline(v=log10(1e-3),col = "gray60")
abline(v=log10(1e-10),col = "gray20")

lines(eCLC, percCLC, lty=1)
lines(eNEW, percNEW, lty=2)
lines(eSEQ, percSEQ, lty=3)

legend('topleft','groups', legend=c("CLCBio", "Newbler", "Seqman"), lty=c(1,2,3),bty ="n")
