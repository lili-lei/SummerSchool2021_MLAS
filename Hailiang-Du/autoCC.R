autoCC<-function(data,L)
#
# Function to compute the autocorrelation up to lag L
#
# a=autoCC(data,L);
#
#
{
a=numeric()
for (i in 0:L)
{
a[i+1]=cor(data[1:(length(data)-i)],data[(1+i):length(data)]) # calculate correlation coefficient
}
return(a)
}
