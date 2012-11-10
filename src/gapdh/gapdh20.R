y <- c(
0.9911488518,
0.900193637,
0.9536544034
)


x <- c(
"Control",
"Kana",
"GAPDH"
)

min <- c(
0.829776574,
0.5824339948,
0.6680395237

)

max <- c(
1.1525211295,
1.2179532793,
1.2392692831
)

pdf("gapdh20.pdf")

barx <- barplot(y, width = 1, space = 0.2,
        names.arg =x, 
	legend.text = NULL, beside = TRUE,
        horiz = FALSE, axis.lty=1,
        border = "black",col=c("grey25","grey50", "grey75"),
        main = "Relative Quantitation of GAPDH in RNAi study",
        xlab = "Averaged Samples", ylab = expression(paste("Relative Quantitation (2^-", Delta, Delta, " CT)")),
        ylim=c(0,1.5))
        
i = 0;
while(i <= length(y)){
  arrows(barx[i], max[i], barx[i], min[i], angle=90, code=3, length=0.05)
  i <- i + 1;
}

#legend(10, 2, legend=c("GAPDH vs Actin", "GAPDH vs EFI-A"), fill = c("grey25","grey75"), col = par("col"),
   #    border = "black")
