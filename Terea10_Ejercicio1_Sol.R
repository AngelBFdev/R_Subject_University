#Example Boston
rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
head(Advertising)
dim(Advertising)
Advertising=Advertising[,-1]
head(Advertising)



trn_set=sample(nrow(Advertising),0.70*nrow(Advertising))
#trn_set
all_set=1:200
#all_set
tst_set=all_set[-trn_set]
#tst_set

X_trn=Advertising[trn_set,1:3]
#head(X_trn)
#dim(X_trn)
X_tst=Advertising[tst_set,1:3]
#head(X_tst)
#dim(X_tst)
y_trn=Advertising[trn_set,4]
#y_trn
y_tst=Advertising[tst_set,4]
#y_tst
fm1=svm(y=y_trn,x=X_trn,kernel="linear")
#fm1
####Predictions
predictions=predict(fm1,X_tst)
plot(y_tst,predictions)
#####MSE calculation
MSE=mean((y_tst-predictions)^2)
MSE
####Correlación de Pearson
APC=cor(y_tst,predictions)
APC



#Example Boston B
rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
head(Advertising)
dim(Advertising)
Advertising=Advertising[,-1]
head(Advertising)

MSE=0
for (i in 1:20){
  trn_set=sample(nrow(Advertising),0.70*nrow(Advertising))
  #trn_set
  all_set=1:200
  #all_set
  tst_set=all_set[-trn_set]
  #tst_set
  
  X_trn=Advertising[trn_set,1:3]
  #head(X_trn)
  #dim(X_trn)
  X_tst=Advertising[tst_set,1:3]
  #head(X_tst)
  #dim(X_tst)
  y_trn=Advertising[trn_set,4]
  #y_trn
  y_tst=Advertising[tst_set,4]
  #y_tst
  fm1=svm(y=y_trn,x=X_trn,kernel="linear")
  #fm1
  ####Predictions
  predictions=predict(fm1,X_tst)
  plot(y_tst,predictions)
  #####MSE calculation
  MSE=MSE+mean((y_tst-predictions)^2)
  #MSE
  ####Correlación de Pearson
  APC=cor(y_tst,predictions)
  APC
}
MSE=MSE/20
MSE






#Example Boston C
rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
head(Advertising)
dim(Advertising)
Advertising=Advertising[,-1]
head(Advertising)



trn_set=sample(nrow(Advertising),0.70*nrow(Advertising))
#trn_set
all_set=1:200
#all_set
tst_set=all_set[-trn_set]
#tst_set

X_trn=Advertising[trn_set,1:3]
#head(X_trn)
#dim(X_trn)
X_tst=Advertising[tst_set,1:3]
#head(X_tst)
#dim(X_tst)
y_trn=Advertising[trn_set,4]
#y_trn
y_tst=Advertising[tst_set,4]
#y_tst
fm1=svm(y=y_trn,x=X_trn,kernel="radial")
#fm1
####Predictions
predictions=predict(fm1,X_tst)
plot(y_tst,predictions)
#####MSE calculation
MSE=mean((y_tst-predictions)^2)
MSE





#Example Boston D
rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
head(Advertising)
dim(Advertising)
Advertising=Advertising[,-1]
head(Advertising)

MSE=0
for (i in 1:20){
  trn_set=sample(nrow(Advertising),0.70*nrow(Advertising))
  #trn_set
  all_set=1:200
  #all_set
  tst_set=all_set[-trn_set]
  #tst_set
  
  X_trn=Advertising[trn_set,1:3]
  #head(X_trn)
  #dim(X_trn)
  X_tst=Advertising[tst_set,1:3]
  #head(X_tst)
  #dim(X_tst)
  y_trn=Advertising[trn_set,4]
  #y_trn
  y_tst=Advertising[tst_set,4]
  #y_tst
  fm1=svm(y=y_trn,x=X_trn,kernel="radial")
  #fm1
  ####Predictions
  predictions=predict(fm1,X_tst)
  plot(y_tst,predictions)
  #####MSE calculation
  MSE=MSE+mean((y_tst-predictions)^2)
  #MSE
}
MSE=MSE/20
MSE




#Example Boston E
rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
#head(Advertising)
dim(Advertising)
Advertising=Advertising[,-1]
#head(Advertising)



trn_set=sample(nrow(Advertising),0.70*nrow(Advertising))
#trn_set
all_set=1:200
#all_set
tst_set=all_set[-trn_set]
#tst_set

X_trn=Advertising[trn_set,1:3]
#head(X_trn)
#dim(X_trn)
X_tst=Advertising[tst_set,1:3]
#head(X_tst)
#dim(X_tst)
y_trn=Advertising[trn_set,4]
#y_trn
y_tst=Advertising[tst_set,4]
#y_tst
fm1=svm(y=y_trn,x=X_trn,kernel="polynomial")
#fm1
####Predictions
predictions=predict(fm1,X_tst)
plot(y_tst,predictions)
#####MSE calculation
MSE=mean((y_tst-predictions)^2)
MSE


#Example Boston F
rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
#head(Advertising)
#dim(Advertising)
Advertising=Advertising[,-1]
#head(Advertising)

MSE=0
for (i in 1:20){
  trn_set=sample(nrow(Advertising),0.70*nrow(Advertising))
  #trn_set
  all_set=1:200
  #all_set
  tst_set=all_set[-trn_set]
  #tst_set
  
  X_trn=Advertising[trn_set,1:3]
  #head(X_trn)
  #dim(X_trn)
  X_tst=Advertising[tst_set,1:3]
  #head(X_tst)
  #dim(X_tst)
  y_trn=Advertising[trn_set,4]
  #y_trn
  y_tst=Advertising[tst_set,4]
  #y_tst
  fm1=svm(y=y_trn,x=X_trn,kernel="polynomial")
  #fm1
  ####Predictions
  predictions=predict(fm1,X_tst)
  plot(y_tst,predictions)
  #####MSE calculation
  MSE=MSE+mean((y_tst-predictions)^2)
  #MSE
}
MSE=MSE/20
MSE



#Example Boston G
rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
#head(Advertising)
#dim(Advertising)
Advertising=Advertising[,-1]
#head(Advertising)



trn_set=sample(nrow(Advertising),0.70*nrow(Advertising))
#trn_set
all_set=1:200
#all_set
tst_set=all_set[-trn_set]
#tst_set

X_trn=Advertising[trn_set,1:3]
#head(X_trn)
#dim(X_trn)
X_tst=Advertising[tst_set,1:3]
#head(X_tst)
#dim(X_tst)
y_trn=Advertising[trn_set,4]
#y_trn
y_tst=Advertising[tst_set,4]
#y_tst
fm1=svm(y=y_trn,x=X_trn,kernel="sigmoid")
#fm1
####Predictions
predictions=predict(fm1,X_tst)
plot(y_tst,predictions)
#####MSE calculation
MSE=mean((y_tst-predictions)^2)
MSE


#Example Boston H
rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
#head(Advertising)
#dim(Advertising)
Advertising=Advertising[,-1]
#head(Advertising)

MSE=0
for (i in 1:20){
  trn_set=sample(nrow(Advertising),0.70*nrow(Advertising))
  #trn_set
  all_set=1:200
  #all_set
  tst_set=all_set[-trn_set]
  #tst_set
  
  X_trn=Advertising[trn_set,1:3]
  #head(X_trn)
  #dim(X_trn)
  X_tst=Advertising[tst_set,1:3]
  #head(X_tst)
  #dim(X_tst)
  y_trn=Advertising[trn_set,4]
  #y_trn
  y_tst=Advertising[tst_set,4]
  #y_tst
  fm1=svm(y=y_trn,x=X_trn,kernel="sigmoid")
  #fm1
  ####Predictions
  predictions=predict(fm1,X_tst)
  plot(y_tst,predictions)
  #####MSE calculation
  MSE=MSE+mean((y_tst-predictions)^2)
  #MSE
}
MSE
MSE=MSE/20
MSE


#Examen
set.seed(11)

rm(list=ls())
library(e1071)
library(MASS)
Advertising=data.frame(read.csv("Advertising.csv",header = T))
head(Advertising)
dim(Advertising)
Advertising=Advertising[,-1]
head(Advertising)

MSE=0
for (i in 1:10){
  trn_set=sample(nrow(Advertising),0.60*nrow(Advertising))
  #trn_set
  all_set=1:200
  #all_set
  tst_set=all_set[-trn_set]
  #tst_set
  
  X_trn=Advertising[trn_set,1:9]
  #head(X_trn)
  #dim(X_trn)
  X_tst=Advertising[tst_set,1:9]
  #head(X_tst)
  #dim(X_tst)
  y_trn=Advertising[trn_set,10]
  #y_trn
  y_tst=Advertising[tst_set,10]
  #y_tst
  fm1=svm(y=y_trn,x=X_trn,kernel="sigmoid")
  #fm1
  ####Predictions
  predictions=predict(fm1,X_tst)
  plot(y_tst,predictions)
  #####MSE calculation
  MSE=MSE+mean((y_tst-predictions)^2)
  #MSE
  ####Correlación de Pearson
  APC=cor(y_tst,predictions)
  APC
}
MSE=MSE/10
MSE


