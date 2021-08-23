stsp<-function(data,Ntimesteps,Q)
# Function to compute the space time separation for a data set
# S=stsp(data,Ntimesteps,Q)
# data - data set
# Ntimesteps - number of time lags
# Q a row vector of quartiles, e.g. [25 50 95] to get 25th, median
# and 95th seperations
{
N<-length(data)
S=vector()
for (i in 1:Ntimesteps)
{
	S=cbind(S,quantile(sqrt((data[1:(N-i)]-data[(1+i):N])^2),Q*0.01))
}
return(S)
}
