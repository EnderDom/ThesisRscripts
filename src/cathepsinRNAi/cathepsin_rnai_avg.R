y <- c(
1.389,
1,
1.4299,
1.058

)
x <- c(
"Sham",
"Kana",
"5'Cath",
"3'Cath"
)

min <- c(
0.4381423359,
0.5224736203,
1.0022043098,
0.4128166131
)

max <- c(
1.5618576641,
1.7290949205,
1.8482863417,
0.8296180262
)

colors <- c("gray17","gray32",
"gray64",
"gray94")

par(lwd = 2)

pdf("rnai_avg.pdf")

barx <- barplot(y, width = 1, space = 0.2,
        names.arg = x, legend.text = NULL, beside = TRUE,
        horiz = FALSE,
        col = colors, border = "black", axis.lty=1,
        main = "Averaged RQ values for RNAi against Cathepsin L",
        xlab = "Averaged Samples", ylab = expression(paste("Relative Quantitation (2^-", Delta, Delta, " CT)")),
        ylim=c(0,2))
        
i = 0;
while(i <= length(y)){
  arrows(barx[i], max[i], barx[i], min[i], angle=90, code=3, length=0.05)
  i <- i + 1;
}

legend(18, 4, legend=c("Sham", "Kana RNAi","5'Cath RNAi","3'Cath RNAi"), fill = c("gray17","gray32","gray64","gray94"), col = par("col"),
       border = "black")
