#1
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(11,15,9)

restricciones <- matrix(c(1, 2, 3,
                          1, 2, 1,
                          3, 1, 1), nrow = 3, byrow = TRUE)
desigualdades <- c("<=",
                   "<=",
                   "<=")

desigualdadesCoeficientes  <- c(12, 
                                10, 
                                13)

valorOptimo = lp("max", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution

#2
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(50, 18)

restricciones <- matrix(c(2, 1,
                          1, 1), nrow = 2, byrow = TRUE)
desigualdades <- c("<=",
                   "<=")

desigualdadesCoeficientes  <- c(100, 
                                80)

valorOptimo = lp("max", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution

#3
#a=1000x+12500y+7500z
#x+y+z=350
#y<=100
#z>=150
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(1000,12500,7500)

restricciones <- matrix(c(1, 1, 1,
                          0, 1, 0,
                          0, 0, 1), nrow = 3, byrow = TRUE)
desigualdades <- c("<=",
                   "<=",
                   ">=")

desigualdadesCoeficientes  <- c(350, 
                                100, 
                                150)

valorOptimo = lp("min", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution

#4
#400x+500y || 20x+20y<=100 || 30x+5y<=50 || 7x+15y<=60
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(400, 500)

restricciones <- matrix(c(20, 20,
                          30, 5,
                          7,15), nrow = 3, byrow = TRUE)
desigualdades <- c("<=",
                   "<=",
                   "<=")

desigualdadesCoeficientes  <- c(100, 
                                50,
                                60)

valorOptimo = lp("max", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution

#5
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(8,6,3,2,4,9)

restricciones <- matrix(c(1,1,1,0,0,0,
                          0,0,0,1,1,1,
                          1,0,0,1,0,0,
                          0,1,0,0,1,0,
                          0,0,1,0,0,1), nrow = 5, byrow = TRUE)
desigualdades <- c("<=",
                   "<=",
                   ">=",
                   ">=",
                   ">=")

desigualdadesCoeficientes  <- c(70, 
                                40, 
                                40,
                                35,
                                25)

valorOptimo = lp("min", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution
