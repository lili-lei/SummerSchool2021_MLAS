tentmap <- function(IC,N,A)
{
# x=tentmap(IC,N,A)
# Function to iterate an initial
# condition IC under a tent map defined
# by the parameter A
# N times
#
#
#

# Step 1 - make sure that the initial 
# condition lies on the interval (0,1)

if(IC<0 | IC>1)
{
	stop('tentmap.R: warning - initial condition lies outside (0,1)')
}

# Step 2 - make sure that the parameter A 
# is not empty

if(length(A)<1)
{
stop('tentmap.R: Warning - parameter is empty')
}

# Step 3 - make sure that the parameter A 
# lies on the interval (0,1)

if(A<0 | A>2)
{
	stop('tentmap.R: warning - A must lie on the interval (0,1)')
}

x=numeric()
x[1]=IC
for (i in 1:N)
{
	if(x[i]<A)
	{
		tmp=(sqrt(2)*x[i]/A)	
		x[i+1]=tmp/sqrt(2)
	}
	else
	{
		tmp=(sqrt(2)*(-x[i]+A))/(1-A)+sqrt(2)*1		
		x[i+1]=tmp/sqrt(2)
	}
}

return(x[-1])
}
