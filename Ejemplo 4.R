require(quadprog)
Dmat <- matrix(c(1, -1, 
                 -1, 1), nrow=2, ncol=2)
Dmat
dvec <- c(2, 6)
Amat <- matrix(c(-1, -1, 
                 1, -2, 
                 -2, -1,
                 1,0, 
                 0,1), nrow=2, ncol=5)
Amat
bvec <- c(-2,-2,-3,0,0)

solve.QP(Dmat+diag(2)*(.001), dvec, Amat, bvec)
