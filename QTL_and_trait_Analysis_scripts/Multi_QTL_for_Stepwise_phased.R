library(qtl)

#Read file (ALL PHASED DATA - reduced 1 snp / cM)
stepw <-read.cross("csv", file="c:/Users/Hanna/Documents/Mimulus Work/QTL Data/All phased data/QTL_1marker_per_cmpos.csv")


####################### Tube Width
p<- 1
t<- "Tube Width"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(8), pos=c(44.822), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val


#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)

####################### Corolla Length
p<- 2
t<- "Corolla Length"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(1,7), pos=c(50.448, 56.862), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)


####################### Corolla Width
p<- 3
t<- "Corolla Width"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(8), pos=c(46.652), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)


####################### Corolla Height
p<- 4
t<- "Corolla Height"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(4,7,8), pos=c(59.24,35.393, 31.02), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2+Q3)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)
bayesint(rqtlstep, qtl.index=3)

####################### Calyx Length
p<- 5
t<- "Calyx Length"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(7), pos=c(35.565), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)

####################### Petal Extension
p<- 8
t<- "Petal Extension"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(6,8,10), pos=c(7.379, 70.622, 59.814), what="prob") 
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2+Q3)
summary(int)
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2+Q3)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)
bayesint(rqtlstep, qtl.index=3)


####################### Pedicel Length
p<- 9
t<- "Pedicel Length"


#Multi-QTL model of stepwise model 
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(1,9), pos=c(83.23, 28.986), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)

####################### Stigma Exertion
p<- 10
t<- "Stigma Exertion"


#Multi-QTL model of stepwise model 
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(7,8,10), pos=c(62.739, 32.484, 9.058), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2+Q3)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)
bayesint(rqtlstep, qtl.index=3)

####################### Tallest Anther
p<- 11
t<- "Tallest Anther"


#Multi-QTL model of stepwise model 
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(3, 4), pos=c(68.065, 37.7), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)

####################### Shortest Anther
p<- 12
t<- "Shortest Anther"


#Multi-QTL model of stepwise model 
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(3,7), pos=c(68.065, 6.544), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)

####################### Stigma-Anther Distance 
p<- 13
t<- "Stigma-Anther Distance"


#Multi-QTL model of stepwise model 
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(7, 10), pos=c(58.767, 9.058), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)

####################### Anthocyanin
p<- 14
t<- "Anthocyanin Absorbance"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(4), pos=c(59.224), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)

####################### Carotenoid Absorbance
p<- 15
t<- "Carotenoid Absorbance"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(2,4,5,7), pos=c(66.776, 64.736, 66.964, 5.335), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p, formula=y ~ Q1+Q2+Q3+Q4+Q2:Q4)
summary(out.fq) #Summary with LOD, % Var, P-val

#Check for Interactions
int<-addint(stepw.cg, qtl=qtlstep, formula=y~Q1+Q2+Q3+Q4)
summary(int)

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)
bayesint(rqtlstep, qtl.index=3)
bayesint(rqtlstep, qtl.index=4)

####################### Leaf Height
p<- 17
t<- "Leaf Height"


#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(2,2), pos=c(18.228, 64.36), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p, keeplodprofile = TRUE)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)

####################### Leaf Perimeter
p<- 18
t<- "Leaf Perimeter"

#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(2,2,6), pos=c(18.228, 64.676, 2.4), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)
bayesint(rqtlstep, qtl.index=2)
bayesint(rqtlstep, qtl.index=3)

####################### Leaf Circularity
p<- 19
t<- "Leaf Circularity"

#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(2), pos=c(3.664), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)

####################### Leaf Width
p<- 20

#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(2), pos=c(64.36), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)

####################### Leaf Resin
p<- 21

#Multi-QTL model of stepwise model
stepw.cg<-calc.genoprob(stepw)
qtlstep <- makeqtl(stepw.cg, chr=c(5), pos=c(59.8), what="prob") 
out.fq <- fitqtl(stepw, qtl=qtlstep, method="hk", pheno.col=p)
summary(out.fq) #Summary with LOD, % Var, P-val

#Refine qtl to plot chr with QTL
rqtlstep <- refineqtl(stepw.cg, qtl=qtlstep, method="hk", pheno.col=p)
plotLodProfile(rqtlstep)

#95% Bayes Intervals
bayesint(rqtlstep, qtl.index=1)

