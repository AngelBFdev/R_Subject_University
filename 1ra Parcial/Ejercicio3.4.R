## Lo primero que tenemos que hacer es instalar 
## los siguiente paquetes
# install.packages("lpSolve")
# install.packages("lpSolveAPI")

# Ahora, llamaremos a los paquetes
library(lpSolve)
library(lpSolveAPI)


# Declaramos los coeficientes de la función objetivo
funcionObjetivo <- c(1, 1.5)

# Pondremos los respectivos desigualdadesCoeficientes de las restricciones
# en una matriz, sin considerar la restricción no negatividad
# porque esta es considera por la libreria.
restricciones <- matrix(c(1, 1,
                          0.25, 0.5,
                          1, 0,
                          0, 1), nrow = 4, byrow = TRUE)

# Establecemos los signos de desigualdad
desigualdades <- c("<=",
                   "<=",
                   ">=",
                   ">=")


# Establecemos el valor de los coeficientes 
# del lado derecho de las restricciones
desigualdadesCoeficientes  <- c(150, 
                                50, 
                                50,
                                25)


# Valor óptimo (z)
valorOptimo = lp("max", funcionObjetivo, restricciones, desigualdades, desigualdadesCoeficientes)
valorOptimo
# Valor final de las variables 
valorOptimo$solution
