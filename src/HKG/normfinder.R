y <- c(
0.359,
0.299,
0.567,
0.84,
0.857
)
x <- c(
"Actin",
"EFI-A",
"GAPDH",
"Tubulin",
"Ubiquitin"
)

colors <- c("gray17","gray24",
"gray45",
"gray64",
"gray94"
)

#par(lwd = 2)

pdf("normfinder.pdf")

barx <- barplot(y, width = 1, space = 0.2,
        names.arg = x, legend.text = NULL, beside = TRUE,
        horiz = FALSE,
        col = colors, border = "black", axis.lty=1,
        main = "HKG Analysis - Gene Stability by Normfinder",
        xlab = "House Keeping Gene", ylab = "Gene Stability (Higher value equals higher instability)",
        ylim=c(0,1))
        

#legend(1, 1, legend=x, fill = colors, col = par("col"),
 #      border = "black")
