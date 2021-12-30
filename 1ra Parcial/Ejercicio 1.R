rm(list=ls(all=TRUE))
to_optimize_function =function(x){
return(-(300*x-x*x))
}
###########Plot of the objective function in funtion of x values
curve(to_optimize_function , from = 0, to = 300, n = 101, add = FALSE,
      type = "l", xname = "x", xlab ="Values of X", ylab ="y")
to_optimize_function2 =function(x){
  return((300*x-x*x))
}
###########Plot of the objective function in funtion of x values
curve(to_optimize_function2 , from = 0, to = 300, n = 101, add = FALSE,
      type = "l", xname = "x", xlab ="Values of X", ylab ="y")

# Por default optim busca el mínimo, con el negativo encontraremos
# la combinación de número que maximiza el producto
res <- optimize(to_optimize_function,c(0,200))
res$minimum

