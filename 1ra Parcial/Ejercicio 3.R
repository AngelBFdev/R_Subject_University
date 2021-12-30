## Lo primero que tenemos que hacer es instalar 
## los siguiente paquetes
#install.packages("lpSolve")
#install.packages("lpSolveAPI")
rm(list=ls(all=TRUE))
# Ahora, llamaremos a los paquetes
library(lpSolve)
library(lpSolveAPI)


# Declaramos los coeficientes de la función objetivo
funcionObjetivo <- c(20, 15)

# Pondremos los respectivos desigualdadesCoeficientes de las restricciones
# en una matriz, sin considerar la restricción no negatividad
# porque esta es considera por la libreria.
restricciones <- matrix(c(200, 150,
                          1, 1), nrow =2, byrow = TRUE)
restricciones

# Establecemos los signos de desigualdad
desigualdades <- c("<=",
                   "<=")


# Establecemos el valor de los coeficientes 
# del lado derecho de las restricciones
desigualdadesCoeficientes  <- c(50000, 
                                500)


# Valor óptimo (z)
valorOptimo = lp("max", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution
