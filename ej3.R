load("ej1.RData")
ls()
df1
df2
df3

apply(df1[,-1],2,sum)
apply(df1[,-1],2,prod)
apply(df1[,-1],2,sin)
apply(df1[,-1],2,cos)
apply(df1[,-1],2,tan)
df1[,-1]

apply(df2[,-1],2,sum)
apply(df2[,-1],2,prod)
apply(df2[,-1],2,sin)
apply(df2[,-1],2,cos)
apply(df2[,-1],2,tan)
df2[,-1]

apply(df3[,-1],2,sum)
apply(df3[,-1],2,prod)
apply(df3[,-1],2,sin)
apply(df3[,-1],2,cos)
apply(df3[,-1],2,tan)
df3[,-1]