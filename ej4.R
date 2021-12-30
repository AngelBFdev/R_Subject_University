#4
Cal<-c(9.9,9.7,9.3,9)
Dif<-c(1,2,3,6)
plot(Dif,Cal)

#5
df <- as.data.frame(matrix(c(1,3,6,9,13,5,8,10), nrow = 4))
df
apply(df,1,sum)
apply(df,1,prod)
apply(df,1,sin)
apply(df,1,cos)
apply(df,1,tan)

#6
df <- as.data.frame(matrix(c(1,3,6,9,13,5,8,10), nrow = 4, byrow = TRUE))
df
apply(df,2,sum)
apply(df,2,prod)
apply(df,2,sin)
apply(df,2,cos)
apply(df,2,tan)


#7

df <- as.data.frame(matrix(c(1,3,6,9,13,5,8,10), nrow = 4))
df
apply(df,2,sum)
apply(df,2,prod)
apply(df,2,sin)
apply(df,2,cos)
apply(df,2,tan)

#8
marcas<-c("MAC","Asus","Lenovo","Dell","HP")
calidad<-c(8,10,9,8,7)
plot(calidad, ann = F,xaxt="n")
axis(1, at=1:length(calidad), lab=marcas)