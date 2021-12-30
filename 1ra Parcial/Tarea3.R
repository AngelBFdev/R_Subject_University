#1
Promedio <- function(vec){
  return(sum(vec)/length(vec))
}
Promedio(c(2,4,6,8,10))

mean(c(2,4,6,8,10))

#2
Mediana <- function(vec){
  pos=(length(vec)+1)/2
  return(vec[pos])
}
Mediana(c(2,4,6,8,10))
median(c(2,4,6,8,10))

#3
vec <- c(1,3,6,9,13,5,8,10)
cal=matrix(vec,nrow=4, byrow=TRUE)
cal
apply(cal,1,sum)
apply(cal,1,prod)
apply(cal,1,sin)
apply(cal,1,cos)

#4
vec <- c(1,3,6,9,13,5,8,10)
cal=matrix(vec,nrow=4, byrow=TRUE)
cal
apply(cal,2,sum)
apply(cal,2,prod)
apply(cal,2,sin)
apply(cal,2,cos)

#5
vec <- c(1,3,6,9,13,5,8,10)
cal=matrix(vec,nrow=4)
cal
apply(cal,1,sum)
apply(cal,1,prod)
apply(cal,1,sin)
apply(cal,1,cos)

#6
vec <- c(1,3,6,9,13,5,8,10)
cal=matrix(vec,nrow=4)
cal
apply(cal,2,sum)
apply(cal,2,prod)
apply(cal,2,sin)
apply(cal,2,cos)

#7
vec <- c(3,6,9,12,15,18,21)
mean(vec)
library(modeest)
mfv(vec)
median(vec)
var(vec)
sd(vec)
min(vec)
max(vec)
range(vec)
quantile(vec)

#8
vec <- c(8.9, 9.1, 9.2, 9.1, 8.4, 9.5, 9.0, 9.6, 9.3, 9.3, 8.9, 9.7,
         8.7, 9.4, 8.5, 8.9, 8.4, 9.5, 9.3, 9.3, 8.8, 9.4, 8.9, 9.3,
         9.0, 9.2, 9.1, 9.8, 9.6, 9.3, 9.2, 9.1, 9.6, 9.8, 9.5, 10.0)
mean(vec)
library(modeest)
mfv(vec)
var(vec)
sd(vec)
range(vec)

#9
vec <- c(8.9, 9.1, 9.2, 9.1, 8.4, 9.5, 9.0, 9.6, 9.3, 9.3, 8.9, 9.7,
         8.7, 9.4, 8.5, 8.9, 8.4, 9.5, 9.3, 9.3, 8.8, 9.4, 8.9, 9.3,
         9.0, 9.2, 9.1, 9.8, 9.6, 9.3, 9.2, 9.1, 9.6, 9.8, 9.5, 10.0)
plot(vec, type="h")
hist(vec)

#10
vec = rpois(n=100, lambda=20)
vec

min(vec)
max(vec)
median(vec)
mean(vec)
quantile(vec)

plot(vec, type="h")
hist(vec)

summary(vec)

#11
vec1=rnorm(n=100, mean=7, sd=0.3)
vec1

min(vec1)
max(vec1)
median(vec1)
mean(vec1)
quantile(vec1)

hist(vec1)

summary(vec1)

#12
vec2=rnbinom(n=100, size=1, p=0.2)+1
vec2

min(vec2)
max(vec2)
median(vec2)
mean(vec2)
quantile(vec2)

hist(vec2)

summary(vec2)

#13
vec3=rexp(n=100, rate =1/10)
vec3

min(vec3)
max(vec3)
median(vec3)
mean(vec3)
quantile(vec3)

hist(vec3)

summary(vec3)