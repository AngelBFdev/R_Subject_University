library(quadprog)
Dmat = matrix(c(2,0,
                0,8),2,2,byrow=T)
dvec = c(8,16)
Amat = matrix(c(0,0,
                0,0),2,2,byrow=T)
bvec = c(0,0)
solve.QP(Dmat,dvec,Amat,bvec)




library(quadprog)
Dmat = matrix(c(2,0,
                0,8),2,2,byrow=T)
dvec = c(8,16)
Amat <- t(matrix(c(-1, -1, 1, 0, 
                   -1, 0, 0, 1), 4, 2))
Amat 

bvec = c(-5,-3,0,0)
solve.QP(Dmat,dvec,Amat,bvec)
