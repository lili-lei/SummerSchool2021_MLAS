bootstrap <-function(x)
#Function to return a bootstrap resample
#from a data vector x.
{
n<-length(x)
out<-numeric()
out<-x[sample(n,n,replace=TRUE)]
return(out)
}
