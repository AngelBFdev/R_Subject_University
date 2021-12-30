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
#a=100x+1250y+750z
#x+y+z<=35
#y<=10
#z>=15
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(100,1250,750)

restricciones <- matrix(c(1, 1, 1,
                          0, 1, 0,
                          0, 0, 1), nrow = 3, byrow = TRUE)
desigualdades <- c("<=",
                   "<=",
                   ">=")

desigualdadesCoeficientes  <- c(35, 
                                10, 
                                15)

valorOptimo = lp("min", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution


#4
#500x+400y || 20x+20y<=100 || 5x+30y<=50 || 15x+7y<=60
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(500, 400)

restricciones <- matrix(c(20, 20,
                          5, 30,
                          15,7), nrow = 3, byrow = TRUE)
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



#1
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(11,15,9)

restricciones <- matrix(c(1, 2, 3,
                          1, 2, 1,
                          3, 1, 1,
                          1, 0, 0,
                          0, 1, 0,
                          0, 0, 1), nrow = 6, byrow = TRUE)
desigualdades <- c("<=",
                   "<=",
                   "<=",
                   ">=",
                   ">=",
                   ">=")

desigualdadesCoeficientes  <- c(12, 
                                10, 
                                13,
                                0,
                                0,
                                0)

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
                          1, 1,
                          1, 0,
                          0, 1), nrow = 4, byrow = TRUE)
desigualdades <- c("<=",
                   "<=",
                   ">=",
                   ">=")

desigualdadesCoeficientes  <- c(100, 
                                80,
                                0,
                                0)

valorOptimo = lp("max", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution


#2
rm(list=ls(all=TRUE))
library(lpSolve)
library(lpSolveAPI)

funcionObjetivo <- c(.3, .9)

restricciones <- matrix(c(1, 1,
                          .21, -.3,
                          .03, -.01,
                          1, 0,
                          0, 1), nrow = 5, byrow = TRUE)
desigualdades <- c(">=",
                   "<=",
                   ">=",
                   ">=",
                   ">=")

desigualdadesCoeficientes  <- c(800, 
                                0,
                                0,
                                0,
                                0)

valorOptimo = lp("min", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution