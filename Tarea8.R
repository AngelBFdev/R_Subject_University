#1
library(quadprog)
Dmat = matrix(c(4,2,
                2,4),2,2,byrow=T)
dvec = c(4,6)
Amat <- t(matrix(c(-1, 1, 0,
                   -2, 0, 1), 3, 2))
Amat 

bvec <- c(-2, 0, 0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution





#2
library(quadprog)
Dmat = matrix(c(4,4,
                4,6),2,2,byrow=T)
dvec = c(6,3)
Amat <- t(matrix(c(-1, -2, 1, 0,
                   -1, -3, 0, 1), 4, 2))
Amat 

bvec <- c(-1, -4, 0, 0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution





#3.1
library(quadprog)
Dmat = matrix(c(4,2,0,
                2,4,2,
                0,2,6),3,3,byrow=T)
dvec = c(-1,3,5)
Amat <- t(matrix(c(1, -3, 1, 0, 0,
                   1, -2, 0, 1, 0,
                   1, -1, 0, 0, 1), 5, 3))
Amat 

bvec <- c(1, -6, 0, 0,0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution

#3.2
library(quadprog)
Dmat = matrix(c(4,2, 0,
                2,4,2,
                 0,2,6),3,3,byrow=T)

dvec = c(-1,3,5)
Amat <- t(matrix(c(1, -3, 1, 0, 0,
                   1, -2, 0, 1, 0,
                   1, -1, 0, 0, 1), 5, 3))
Amat 

bvec <- c(1, -6, 0, 0,0)

sol <- solve.QP(-Dmat, -dvec, Amat, bvec)
sol$value
sol$solution






#4.1
library(quadprog)
Dmat = matrix(c(-4,4,
                4,-8),2,2,byrow=T)
dvec = c(-15,-30)
Amat <- t(matrix(c(1, 1, 0,
                   2, 0, 1), 3, 2))
Amat 

bvec <- c(30, 0, 0)

sol <- solve.QP(-Dmat, -dvec, Amat, bvec)
sol$value
sol$solution

#4
library(quadprog)
Dmat = matrix(c(4,-4,
                -4,8),2,2,byrow=T)
dvec = c(15,30)
Amat <- t(matrix(c(-1, 1, 0,
                   -2, 0, 1), 3, 2))
Amat 

bvec <- c(-30, 0, 0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution


#Examen
library(quadprog)
Dmat = matrix(c(4,4,
                4,6),2,2,byrow=T)
dvec = c(6,3)
Amat <- t(matrix(c(-1, -2, 1, 0,
                   -1, -3, 0, 1), 4, 2))
Amat 

bvec <- c(1, 4, 0, 0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution

#3.1
library(quadprog)
Dmat = matrix(c(1,0,0,
                0,1,0,
                0,0,1),3,3,byrow=T)
dvec = c(11,15,9)
Amat <- t(matrix(c(-1, -1, 3, 1, 0, 0,
                   -2, -2, 1, 0, 1, 0,
                   -3, -1, 1, 0, 0, 1), 6, 3))
Amat 

bvec <- c(-12, -10, -13, 0, 0,0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution

#3.1
library(quadprog)
Dmat = matrix(c(4,2,0,
                2,4,2,
                0,2,6),3,3,byrow=T)
dvec = c(-1,3,5)
Amat <- t(matrix(c(1, -3, 1, 0, 0,
                   1, -2, 0, 1, 0,
                   1, -1, 0, 0, 1), 5, 3))
Amat 

bvec <- c(1, -6, 0, 0,0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution

#4
library(quadprog)
Dmat = matrix(c(4,-4,
                -4,8),2,2,byrow=T)
dvec = c(15,30)
Amat <- t(matrix(c(-1, 1, 0,
                   -2, 0, 1), 3, 2))
Amat 

bvec <- c(-30, 0, 0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution

#5
library(quadprog)
Dmat = matrix(c(1,0,
                0,1),2,2,byrow=T)
dvec = c(.3,.9)
Amat <- t(matrix(c(1, -.21, .03, 1, 0,
                   1,  .3, -.01, 0, 1), 5, 2))
Amat 

bvec <- c(800, 0, 0, 0, 0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution

#5
library(quadprog)
Dmat = matrix(c(1,0,
                0,1),2,2,byrow=T)
dvec = c(50,18)
Amat <- t(matrix(c(-2, -1,  1, 0,
                   -1, -1,  0, 1), 4, 2))
Amat 

bvec <- c(-100, -80, 0, 0)

sol <- solve.QP(Dmat, dvec, Amat, bvec)
sol$value
sol$solution