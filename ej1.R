set.seed(3)

df1 <- data.frame(Letras = LETTERS[1:5], n1 = runif(5), n2=rnorm(5))
df1

df2 <- data.frame(Letras = LETTERS[1:5], n1 = runif(5), n2=rnorm(5))
df2

df3 <- data.frame(Letras = LETTERS[1:5], n1 = runif(5), n2=rnorm(5))
df3

save(df1,df2,df3,file = "ej1.RData")