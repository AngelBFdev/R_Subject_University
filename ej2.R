load("ej1.RData")
ls()
df1
df2
df3

apply(df1[,-1],1,sum)
apply(df1[,-1],1,prod)
apply(df1[,-1],1,sin)
apply(df1[,-1],1,cos)
apply(df1[,-1],1,tan)
df1[,-1]

apply(df2[,-1],1,sum)
apply(df2[,-1],1,prod)
apply(df2[,-1],1,sin)
apply(df2[,-1],1,cos)
apply(df2[,-1],1,tan)
df2[,-1]

apply(df3[,-1],1,sum)
apply(df3[,-1],1,prod)
apply(df3[,-1],1,sin)
apply(df3[,-1],1,cos)
apply(df3[,-1],1,tan)
df3[,-1]