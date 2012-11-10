library('venneuler')
vd <- venneuler(c("A"=31922, "B"=30129, "C"=29215, "A&B"=23332, "A&C"=21097, "B&C"=23740 ,"A&B&C"=19189), labels=c("31922", "30129", "29185"))

pdf("venn.pdf")

plot(vd)