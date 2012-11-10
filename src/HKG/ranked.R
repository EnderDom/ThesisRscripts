y <- c(
0.282,
0.238,
0.692,
0.692,
1
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

pdf("ranked.pdf")

barx <- barplot(y, width = 1, space = 0.2,
        names.arg = x, legend.text = NULL, beside = TRUE,
        horiz = FALSE,
        col = colors, border = "black", axis.lty=1,
        main = "HKG Analysis - Ranked Gene Stability",
        xlab = "House Keeping Gene", ylab = "Ranked Gene Stability",
        ylim=c(0,1))
        

#legend(1, 1, legend=x, fill = colors, col = par("col"),
 #      border = "black")
