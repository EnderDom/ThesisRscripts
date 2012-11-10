y <- c(1, 1.7718890819,1.9068116664,2.5887690997)
x <- c("s7","s8","s9","s10")

max <- c(0.52,1.01,1.7684634924,2.15345788)
min <- c(1.91,3.12,2.0559773445,3.1120598316)

par(lwd = 2)

barx <- barplot(y, width = 1, space = 0.1,
        names.arg = x, legend.text = NULL, beside = TRUE,
        horiz = FALSE,
        col = "white", border = "black",axis.lty=1, 
        main = "Variability of Cathepsin L",
        xlab = "Sample Number", ylab = expression(paste("Relative Quantitation (2^-", Delta, Delta, " CT)")),
        ylim=c(0,5))
        
i = 0;
while(i <= length(y)){
  arrows(barx[i], max[i], barx[i], min[i], angle=90, code=3, length=0.1)
  i <- i + 1;
}