y <- c(
1.936876776,
1.0451374787,
1,
0.985608252,
0.3638204514,
2.3485989817,
1.2106639627,
1.0371976366,
0.7523904881,
0.6532035517,
2.5625297269,
1.4175392898,
1.3986209051,
1.1636843449,
1.0562398886,
0.825034794,
0.7159453876,
0.6877678963,
0.6044857298,
0.4787508967
)
x <- c(
"Sham3",
"Sham5",
"Sham1",
"Sham4",
"Sham2",
"Kana5",
"Kana3",
"Kana4",
"Kana1",
"Kana2",
"5'Cath5",
"5'Cath4",
"5'Cath1",
"5'Cath3",
"5'Cath2",
"3'Cath3",
"3'Cath5",
"3'Cath2",
"3'Cath1",
"3'Cath4"
)

max <- c(
2.3570714353,
1.6492487747,
1.0500401661,
1.056945023,
0.4115939721,
2.5346765284,
1.910468102,
1.2571195742,
0.918734454,
0.6996397458,
2.8123733763,
1.4834738138,
1.47210844,
1.2321182894,
1.1773577385,
0.8939502091,
1.0551347028,
0.7330376873,
0.6228884897,
0.5799428867
)
min <- c(
1.5915901356,
0.6623090259,
0.952344522,
0.9190862393,
0.321591981,
2.1761818973,
0.7671979601,
0.8557490945,
0.6161643814,
0.6098494011,
2.334881512,
1.3545352937,
1.328801862,
1.0990513379,
0.9475817466,
0.7614321294,
0.4857937063,
0.645293806,
0.5866266652,
0.3952155054
)

colors <- c("gray17","gray17","gray17","gray17","gray17",
"gray32","gray32","gray32","gray32","gray32",
"gray64","gray64","gray64","gray64","gray64",
"gray94","gray94","gray94","gray94","gray94")

#par(lwd = 2)

pdf("rnai.pdf")

barx <- barplot(y, width = 1, space = 0.2,
        names.arg = NULL, legend.text = NULL, beside = TRUE,
        horiz = FALSE, 
        col = colors, border = "black", axis.lty=1,
        main = "RNAi against Cathepsin L",
        xlab = "Sample Names", ylab = expression(paste("Relative Quantitation (2^-", Delta, Delta, " CT)")),
        ylim=c(0,3))

axis(1, at=seq(0.7, 24, by=1.2), labels = FALSE)
text(seq(-0.3, 23, by=1.2), par("usr")[3]-0.12, labels = x, srt = 45, pos = 1, xpd = TRUE)


i = 0;
while(i <= length(y)){
  arrows(barx[i], max[i], barx[i], min[i], angle=90, code=3, length=0.05)
  i <- i + 1;
}

legend(17, 2.5, legend=c("Sham Injected", "Kana RNAi","5'Cath RNAi","3'Cath RNAi"), fill = c("gray17","gray32","gray64","gray94"), col = par("col"),
       border = "black")
