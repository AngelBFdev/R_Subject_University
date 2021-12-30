library(quadprog)
# La matriz que aparece en la función cuadrática
Dmat <- matrix(c(0.25, 0.08, -0.01, 
                 0.08, 0.45, -0.02, 
                 -0.01, -0.02, 0.05), 3, 3)

# Vector que aparece en la función cuadrática
dvec <- c(0, 0, 0)

# Matriz que define las restricciones
Amat <- t(matrix(c(1, 21, 1, 0, 0, 
                   1, 30, 0, 1, 0, 
                   1, 8, 0, 0, 1), 5, 3))
Amat 

# Vector que contiene el valor de b_0
bvec <- c(1, 18, 0, 0, 0)

# Sólo la primera limitación es la igualdad
qp <- solve.QP(Dmat, dvec, Amat, bvec, meq = 1)
qp