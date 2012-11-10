y <- c(
1.3898726488,
1.2540387731,
1,
1,
1.4299082172,
1.0584779353,
1.0887833452,
0.6727678618,
0.2063961341,
0.6109254395,
0.0336166103,
0.4607393929
)


x <- c(
"C1",
"C1",
"C2",
"C2",
"K1",
"K1",
"K2",
"K2",
"G1",
"G1",
"G2",
"G2"
)

min <- c(
1.4886844729,
1.4144264833,
1.335957655,
1.1003405756,
2.1283300439,
1.144448634,
1.4241665827,
0.7898944572,
0.3221107597,
0.8767359716,
0.2937219371,
0.6053009288
)

max <- c(
1.2910608246,
1.093651063,
0.664042345,
0.8996594244,
0.7314863905,
0.9725072365,
0.7534001077,
0.5556412664,
0.0906815086,
0.3451149075,
-0.2264887165,
0.316177857
)

pdf("gapdh.pdf")

barx <- barplot(y, width = 1, space = 0.2,
        names.arg =x, 
	legend.text = NULL, beside = TRUE,
        horiz = FALSE, axis.lty=1,
        border = "black",col=c("grey25","grey75"),
        main = "Relative Quantitation of GAPDH in RNAi study",
        xlab = "Samples", ylab = expression(paste("Relative Quantitation (2^-", Delta, Delta, " CT)")),
        ylim=c(0,2.5))
        
i = 0;
while(i <= length(y)){
  arrows(barx[i], max[i], barx[i], min[i], angle=90, code=3, length=0.05)
  i <- i + 1;
}

legend(10, 2, legend=c("GAPDH vs Actin", "GAPDH vs EFI-A"), fill = c("grey25","grey75"), col = par("col"),
       border = "black")
