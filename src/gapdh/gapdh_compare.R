
#Actin
y_data <- c(
1.3898726488,
1,
1.4299082172,
1.0887833452,
0.2063961341,
0.0336166103
);

#EFI-A
x_data <- c(
1.2540387731,
1,
1.0584779353,
0.6727678618,
0.6109254395,
0.4607393929
);


lin <- data.frame(x = x_data, y = y_data)
linm <- lm(y ~ x, data = lin)
intercept <- coef(linm)["(Intercept)"]
slope <- coef(linm)["x"]

formula <- paste(slope, intercept, sep="x + ");

summ <- summary(linm);

rsquare <- summ$r.squared

pdf("gapdh_compare.pdf")

plot(y ~ x, data = lin, xlab="GAPDH vs Actin (RQ)", ylab="GAPDH vs EFI-A (RQ)")
abline(linm) 

#Add a box
box();

#Add a legend
legend("topleft", c("RQ Values","Linear Regression of RQ values"), cex=0.8, col="black", lwd=2, pch=c(1,-1), bty="n", lty=c(0,1));

legend("bottomright", c(paste("f(x) = ", formula), paste("R^2",rsquare,sep=" = ")), cex=0.8, col="black",bty="n");

title(main="Linear Regression to show GAPDH vs HKG Correlation", col.main="black", font.main=3);