library(quadprog)
Dmat <- diag(3)
Dmat

dvec <- c(0, 5, 0)
Amat <- matrix(c(
  4, 3, 0,
  -2, -1, 0,
  0, 2, -1
),nrow = 3, ncol = 3, byrow =T)
Amat

bvec <- c(8, -2, 0)
sol <- solve.QP(Dmat, dvec, Amat, bvec=bvec)
sol$value
sol$solution

