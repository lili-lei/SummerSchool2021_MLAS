logistic <- function(ic,a,t)
#
# x=logistic(ic,a,t)
# 
# Function to iterate the logistic map x(t+1)=a*x(t)(1-x(t))
# ic: the initial conditions
# a: the parameter of the logistic map
# t: number of iterations
{
x=numeric()
x[1]=ic
for (i in 1:floor(t)) #for values of i between 1 and the highest integer less than or equal to t
{
x[i+1]=a*x[i]*(1-x[i])
}
return(x)
}
