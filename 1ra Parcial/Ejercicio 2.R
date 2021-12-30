rm(list=ls(all=TRUE))
to_optimize_function <- function(x) {
  # Negativo porque se quiere maximizar
  return(-((50 + x) * (800 - 10 * x)))
}

###########Plot of the objective function in funtion of x values
curve(to_optimize_function , from = 0, to = 30, n = 50, add = FALSE,
      type = "l", xname = "x", xlab ="Vlues of X", ylab ="y")

# Por default optim busca el mínimo, con el negativo encontraremos
# la combinación de número que maximiza el producto
res <- optimize(to_optimize_function,c(0,30))
res$minimum

