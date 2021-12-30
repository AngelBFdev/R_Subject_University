rm(list=ls())
library(BMTME)
library(BGLR)
####### Primeros Pasos ###########

10+5
4*3
20+30+10
20-10

10/5

5^4
8^2
88^10

2%%5
5%%26

3.14*4

5-11
x=2
x
x<-2
x
y=x+3
y
####### Establecer directorios de trabajo ###########
getwd()

setwd("C:\\Usuario\\Documentos\\Curso") #Windows
setwd("C:/Usuario/Documentos/Curso") #Windows
setwd("~/Documentos/Curso") #Linux

####### Creación de objetos/variables ###########
saludo = "Hola mundo"
saludo

x <- 10+5 
x
y <- x + 5 
y
x= 10+5 
y= x + 5 
y

####### Vectores ###########
##Primera forma
X <- c(1,2,3) 
X 
XX=c("Pedro", "Pablo", "Juan")
XX
##Segunda forma
X <- 10:30
X

##Tercera forma
X1=rep(c(1,4,6), times=3)
length(X1)
X2=rep(X1, times=5)
length(X2)
X2
X3=rep(c(1,4,9), each=3)
X3
length(X3)
X4=rep(4:6, each=2)
X4
X5=rep(4:6, times=2)
X5
X5=rep(4:6, times=2)
X5

####### Accediendo a los valores del vector ###########
edad_familia <- c(45,43,13,8,5)
edad_familia

##Consultar un índice.
edad_familia[1]
edad_familia[3]
edad_familia[1:3]
edad_familia[c(1,3,5)]
edad_familia

##Promedio de las edades.
prom_man=(edad_familia[1]+edad_familia[2]+edad_familia[3]+edad_familia[4]+edad_familia[5])/5
prom_man
prom_man2=(edad_familia[1]+edad_familia[2]+edad_familia[3]+edad_familia[4]+edad_familia[5])/length(edad_familia)
prom_man2
prom_man3=sum(edad_familia)/length(edad_familia)
prom_man3
prom_man4=mean(edad_familia)
prom_man4
rrr=c(1,2,4,NA)
mean(rrr)
mean(rrr,na.rm=T)
na.rm
####### Funciones ###########
Promedio=function(vector) {
  return(sum(vector)/length(vector))
}

Promedio(vector=c(1,2,3,4,5))
vector=c(1,2,3,4,5)
mean(vector)
Promedio(vector)
Promedio(edad_familia)
###### Funciones Matemáticas ########
sqrt(16)
sqrt(5)
sqrt(c(4,9,16))

exp(5)
2.718282^5
exp(1)
2.718282^1
exp(2)
2.718282^2
exp(c(2,5,5,7,9))

log(1)
log(5)
log(1:10)

log10(4)
log10(1)
log10(2:8)

sum(1, 2, 3)
r=c(1, 2, 3)
sum(r)
sum(1.5, 2, 3)
r2=c(1.5, 2, 3)
sum(r2)

r=c(1, 2, 3)
sum(r)
cumsum(r)
rr=1:10
rr
sum(rr)
cumsum(rr)



prod(5, 4, 1)
r3=c(5, 4, 1)
prod(r3)
r4=1:20
prod(r4)

prod(2.5, 10, 2)

sin(5)
cos(5)
tan(5)

#Funciones 
f<-function(x) #Define la función sin(x^2)+3*x
{
  return(sin(x^2)+3*x)
}
xv = seq(1,10,0.1)
xv
fv = f(xv) # Evalúa f en cada elemento de xv
fv
plot(xv,fv) # Gráfico de f en los puntos xv
curve(f(x),1,10)# Alternativa a lo anterior

c=1:10
c
xx=rnorm(10,8, 1)
xx
median(xx)
xxx_ord=sort(xx)
xxx_ord
(7.626917+7.647805)/2
?sort
xxx_ord2=sort(xx, decreasing = T)
xxx_ord2
xxx_ord
dd=rnorm(10000,8, 0.5)
head(dd)
tail(dd)
hist(dd)
quantile(dd,probs=0.5)
median(dd)
quantile(dd,probs=0.1)
quantile(dd,probs=0.25)
quantile(dd,probs=0.75)
quantile(dd,probs=0.9)
quantile(dd,probs=0.95)
quantile(dd,probs=1.0)

ne=1:10
ne
ip=ne*100
ip
plot(ne,ip)
cor(ne,ip)
x1=rnorm(10,20, 3)
x1
x2=rnorm(10,22, 0.5)
x2
plot(x1,x2)
cor(x1,x2)
ccc=1:10
range(ccc)
max(ccc)
min(ccc)
summary(ccc)
quantile(ccc, probs=c(0,0.25,0.5,0.75,1))
n=4
k=2
choose(n,k)


x4=rnorm(7)
x4
round(x4,2)
round(x4,3)
round(x4,4)
#####Varianza
x5=4:8
x5
var(x5)
sd(x5)
sqrt(var(x5))
max(x5)
min(x5)
range(x5)
Rango=max(x5)-min(x5)
Rango

x10=1:10
x10
median(x10)

x11=rnorm(10,5,0.3)
x11
median(x11)

x12=c(1:5,5:9)
x12
quantile(x12)
quantile(x12, probs=0.12)
?quantile
seq(0,1,0.1)
quantile(x12, probs=seq(0,1,0.1))
quantile(x12, probs=seq(0,1,0.05))
x12
summary(x12)
cal=rnorm(1000,8,1)
head(cal,11)
tail(cal)
hist(cal)

cal=rnorm(1000,8,0.1)
head(cal,9)
tail(cal)
hist(cal)

#####cor
x=1:10
y=x+rnorm(10,0,9)
cor(x,y)
plot(x,y)

######Coeficiente de variancion=(sd/promedio)*100
x
CV=(sd(x)/mean(x))*100
CV

x=c(rep(0,16),rep(1,2))
x
mean(x)*100
x2=ifelse(x==0,1,0)
x2
mean(x2)*100

x3=c(rep(1,90), rep(2,85), rep(3, 80), rep(4,70))
x3
length(x3)
Tab_g=table(x3)
Tab_g
Tab_per=(Tab_g/length(x3))*100
Tab_per
sum(Tab_per)
x4=ifelse(x3==1,1,0)
x4
mean(x4)

####### Matrices ###########
##Como crear una matriz.
#matrix(data = vec, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

vec <- 1:10
vec
##Llenar por filas
matrix(vec, ncol=5, nrow=2)

##Llenar por columnas
matrix(1:20, ncol=5, byrow =F)

##Ingresando los valores.
matrix(c(1,2.3,3,4.5,5,6.2), ncol = 2, nrow=3,byrow = F)


matriz <-matrix(vec, ncol=5, nrow=2)
matriz
colnames(matriz)
colnames(matriz)=c("x","y","z","w","v")
matriz
rownames(matriz)
rownames(matriz)=c("a","b")
matriz

class(matriz)

####### apply ########### 
apply(X, MARGIN, FUN)


##Creación de la  matriz.
x <- matrix(data = 1:9, nrow=3, byrow = TRUE)
x

##Promedio por columna.
apply(x,1,sum)
apply(x,2,sum)
x
apply(x,1,mean)
apply(x,2,mean)

CV=function(vec){
  CV=(sd(vec)/mean(vec))*100
  CV
}
CV(vec=1:10)
x
apply(x,2,CV)
apply(x,1,CV)

####### Data Frames ########### 

##Creando un data frame.
data.frame(w =7, x = 1:5, y = LETTERS[1:5], z=runif(5))

##De matriz a data frame.
matriz <- matrix(runif(10), ncol=5)
matriz
df <- as.data.frame(matriz)
df
apply(df,1,sum)
apply(df,2,sum)
M2=data.frame(w =7, x = 1:5, y = LETTERS[1:5], z=runif(5))
M2
apply( M2,1,sum)
apply( M2,2,sum)
apply( M2[,-3],1,sum)
M2[,-3]
apply( M2[,-3],2,sum)

apply( M2[,-3],2,sum)

##Accediendo a los datos de una columna.
df <- data.frame(w =6:10, x = 1:5, y = LETTERS[1:5], z=runif(5))
df
df$w
df$z

##Accediendo a los de una de una columna mediante su nombre.
df <- data.frame(Letras = LETTERS[1:5], Valores=runif(5))
df
df[,2]
df["Valores"]
df[4,"Letras"]
df[c(4:5),"Letras"]


##Método de acceso como una matriz.
df <- data.frame(Letras = LETTERS[1:5], Valores=runif(5))
df[1,]
df[,1]
df[1,1]

####### Escribir y leer archivos en R. ###########

#######  CSV (Comma-separated values) ####### 
df = data.frame(runif(10), runif(10), runif(10)) 
df
names(df) = c("dato1", "dato2", "dato3")
df
df = data.frame(dato1=runif(10), dato2=runif(10), dato3=runif(10)) 
df

##Exportar sin el nombre de las filas.
write.table(df, file = "dataframe2222.csv", sep = ",",
            row.names = FALSE)

##Exportar los datos.
write.table(df, file = "dataframe11.csv", sep = ",",
            col.names = NA)

##Importar los datos sin el nombre de las filas.
Data_New=read.table("dataframe2222.csv", header = TRUE, sep = ",")
Data_New


##Forma más sencilla de importar un .csv
read.csv(file, header = TRUE, sep = ",", dec = ".", ...)

##Ejemplo
Data_New22=read.csv("dataframe2222.csv")
Data_New22


#######  Guardar y cargar archivos .RData ####### 
foo = "bar"
foo
save(foo, file="nombre.RData")

load("nombre.RData")
foo
df
save(df,file="df.RData")
load("df.RData")
ls()
dff=df
dff

save(df,file="dfff.RData")
load("dfff.RData")
ls()
dff=df
dff
####### Graficas ###########
##Código base de un plot.
#plot(x, y, type="p", main ="Titulo", sub= "subtitulo", xlab="Eje x", ylab="Eje Y")

##Primera gráfica.
peso <- c(85,84,84.5,78,76.5,74.5,75)
peso 
plot(peso)

##Segunda gráfica con líneas.
peso <- c(85,84,84.5,78,76.5,74.5,75)
plot(peso, type="h")
?plot

##Tercera gráfica con título.
peso <- c(85,84,84.5,78,76.5,74.5,75)
plot(peso, type="h", ann = F); title(main = "Un asombroso título", xlab="Semana", ylab = "Peso en Kg" )

##Cuarta gráfica con los ejes renombrados.
peso <- c(85,84,84.5,78,76.5,74.5,75)
plot(peso, type="h", ann = F, xaxt="n")
title(main = "Un asombroso título", ylab = "Peso en Kg" )
axis(1, at=1:length(peso), lab=c("Semana 1","Semana 2","Semana 3","Semana 4",
                                 "Semana 5","Semana 6","Semana 7"))

##Datos de la quinta gráfica.
animales <- matrix(c(10,8,9,7,7,5,5,4,5,3,3,7), nrow = 3, ncol = 4, 
                   dimnames = list(c("Perro", "Gato", "Otros"),
                                   c("Enero", "Febrero", "Marzo", "Abril")))
animales

##Quinta gráfica.
plot(x=1:4, y=animales[1,], type = "o", col="blue", axes=F, ann=FALSE)
axis(1, at=1:4, lab=colnames(animales))
axis(2, las=1, at=1:12)
box()
lines(animales[2,], type="o", pch=22, lty=4, col="red")
lines(animales[3,], type="o", pch=22, lty=4, col="green")
title(xlab="Mes", col.lab=rgb(0,0.5,0))
title(ylab="Rescatados", col.lab=rgb(0,0.5,0))
legend(3.2,8.6,c("Perros","Gatos","Otros"),lty=c(1,2,2),col=c("blue","red","green")) 


##Gráfica de Pie.
gastos = c(Escuela=100, Alimentos=120, Recreación=90, Transporte=50) 
gastos
sum(gastos) 
pie(gastos)

gastos_per =round((gastos/sum(gastos))*100,2) 
gastos_per 

pie(gastos_per,labels=as.character(gastos_per),col =c("black","green", "red", "blue"), main ="Gasto semanal de Samuel",clockwise=TRUE)
#help(pie,)

####Example 2 pie graph###
expenditure=c(Housing=600,Food=300,Cloths=150,Entertainment=100,    Other=200)

expenditure_per=round((expenditure/sum(expenditure))*100,2)
expenditure_per
pie(expenditure_per)

pie(expenditure_per,
    labels=as.character(expenditure_per),###key for putting numbers in the plot
    main="Monthly Expenditure Breakdown",
    col=c("red","orange","yellow","blue","green"),
    border="brown",
    clockwise=TRUE)

pie(rep(1, 24), col = rainbow(24), radius = 0.9)

pie.sales <- c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)
names(pie.sales) <- c("Blueberry", "Cherry",
                      "Apple", "Boston Cream", "Other", "Vanilla Cream")
pie(pie.sales) # default colours
pie(pie.sales, col = c("purple", "violetred1", "green3",
                       "cornsilk", "cyan", "white"))
pie(pie.sales, col = gray(seq(0.4, 1.0, length = 6)))
pie(pie.sales, density = 10, angle = 15 + 10 * 1:6)
pie(pie.sales, clockwise = TRUE, main = "pie(*, clockwise = TRUE)")
segments(0, 0, 0, 1, col = "red", lwd = 2)
text(0, 1, "init.angle = 90", col = "red")


####### Condiciones (if-else) ###########

if(10%%2==1){ 
  print("Es par") 
}else{ 
  print("Es impar") 
} 


##Semilla
set.seed(1)
val <- round(runif(1)*10,0)
val

ifelse(val%%2==1,"Par","Impar")

####### Ciclos, Repeticiones o Loops ###########
for(i in 1:5){ 
  print(i) 
} 

x1=1:5
x1
x2=6:10
x2
rbind(x1,x2,x1,x2,x1,x2)
cbind(x1,x2,x1,x2,x1,x1)
cbind(x1,x2,y=x1+x2,z=x1-x2)

Gan=data.frame()
for (j in 1:20){
  Util=2*j+5
  Gan=rbind(Gan,Util)
}
Gan

Gan2=c()
for (j in 1:20){
  Util=2*j+5
  Gan2=c(Gan2,Util)
}
Gan2

Gan3=data.frame()
for (j in 1:20){
  Util=2*j+5
  Util2=3*j+3
  
  Gan3=rbind(Gan3,data.frame(Util1=Util, Util2=Util2))
}
Gan3

Gan4=data.frame()
for (j in 1:20){
  Util=2*j+5
  Util2=3*j+3
  Type=ifelse(Util%%2==0,"Par","Impar")
  
  Gan4=rbind(Gan4,data.frame(Util1=Util, Util2=Util2,Type=Type))
}
Gan4

ifelse(val%%2==1,"Par","Impar")

i = 1 
while(i < 50){ 
  i = i * 2 
  print(i) 
} 

####### Paquetes ###########

  ##### Para paquetes oficiales de CRAN #####
install.packages("NombreDelPaquete")
library(NombreDelPaquete) #Para usar el paquete
####
library(modes)
##Example 1.1
data<-c(rep(6,9),rep(3,3))
data
modes(data,type=1,"NULL","NULL")

dist1<-rnorm(21,5,2)
dist2<-dist1+11
data<-c(dist1,dist2)
hist(data)
bimodality_ratio(data,FALSE)
library(entropy)
y2 = discretize(x2, numBins=10, r=c(0,1))
y2
entropy(y2) # almost zero
getAnywhere(entropy)


  ##### Para paquetes de GitHub #####
install.packages("devtools") #Correr solo si no se tiene el paquete "devtools" instalado.
devtools::install_github("usuario/repositorio")

####### Ayuda y documentación ###########

help(nombre)

help(help)  #Sí, es posible
help(sum)   #Documentación de una función
help(slidify) #Documentación de un paquete

mean(1:10)

E <- matrix(data= c(7,9,4,3,6,9,5,9,8,11,3,2,11,9,6), nrow = 3, ncol = 5, byrow = TRUE)
E

M1=E[1,]
M1

M2=E[,1]
M2

E[3,2]

e <- c(8,10,5,4,7)
e
e[5]

F1 <- matrix(data = c(8,10,4,11,7,3,11,11,12), nrow = 3, ncol = 3)
F1
#upper.tri(F1)
F1[upper.tri(F1,diag =F)]<- 0
F1

G <- matrix(data = c(8,10,4,11,7,3,11,11,121), nrow = 3, ncol = 3, ,byrow=T)
G
G[lower.tri(G,diag = T)] <- 0
G



F[upper.tri(F)]<- 0
F

H <- matrix(data = c(4,6,0,6,2,-1), nrow = 3,   2)
H

t(H)

H2=matrix(c(1:15),ncol=3)
H2

t(H2)

J <- matrix(data= c(15,15,25,35), ncol = 2, byrow = TRUE)
J
L <- matrix(data= c(55,65,75,85), ncol = 2, byrow = TRUE)
L
M<- J+L
M
L2=matrix(c(1:9),ncol=3)
L2
M2=J+L2 ###Operacion no valida


N=J-L
N
N2=L-J
N2

P <- matrix(data=c(6,5,4,8,6,6,10,8,9), ncol=3)
Q <- matrix(data=c(3,2,9,5,2,8), ncol=2)

S <- P%*%Q
S

S2=P*Q
S2

A=matrix(c(3,4,5,1,6,7,8,2,9,10,11,3),ncol=4,byrow=T)
A

B=matrix(c(1,5,9,2,6,10,3,7,11,4,8,12),ncol=3,byrow=T)
B
C=A%*%B
C
D=matrix(1:9,ncol=3)
D
E=C+D
E
F=C-D
F
G=D-C
G
H=t(C)+t(D)
H




