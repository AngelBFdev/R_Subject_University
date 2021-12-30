## Lo primero que tenemos que hacer es instalar 
## los siguiente paquetes
install.packages("lpSolve")
install.packages("lpSolveAPI")

# Ahora, llamaremos a los paquetes
library(lpSolve)
library(lpSolveAPI)


# Declaramos los coeficientes de la función objetivo
funcionObjetivo <- c(20, 60)

# Pondremos los respectivos desigualdadesCoeficientes de las restricciones
# en una matriz, sin considerar la restricción no negatividad
# porque esta es considera por la libreria.
restricciones <- matrix(c(30, 20,
                          5, 10, 
                          1, 1), nrow = 3, byrow = TRUE)

# Establecemos los signos de desigualdad
desigualdades <- c("<=",
                   "<=",
                   ">=")


# Establecemos el valor de los coeficientes 
# del lado derecho de las restricciones
coeficientesDesigualdades <- c(2700,
                               850,
                               95)


# Valor óptimo (z)
valorOptimo = lp("max", funcionObjetivo, restricciones, 
                 desigualdades, coeficientesDesigualdades)
valorOptimo
# Valor final de las variables 
valorOptimo$solution
