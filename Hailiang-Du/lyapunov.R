lyapunov <- function(IC,epsilon,A)
#
# lambda=lyapunov(IC,epsilon,A)
# Function to compute (experimentally)
# finite time Lyapunov exponents of the tent map
# defined by the parameters A
# IC is univeriate array which contains initial conditions
# The function takes each initial
# condition IC(i) and perturbs it by epsilon.
# We then iterate the two initially
# close by initial conditions and record
# the rate of expansion. We use this to
# estimate the finite time Lyapunov exponent

{
out=numeric()
for (i in 1:length(IC)) # For all initial conditions chosen by user
{
	ic=c(IC[i]-epsilon,IC[i],IC[i]+epsilon) # Define initial conditions with negative, zero and positive perturbation
	x=numeric() #define x
	
	for (j in 1:3) #for each initial condition
	{
		if (ic[j]>0 & ic[j]<1) #check initial condition lies in range (0,1)
		{	
			x[j]=tentmap(ic[j],1,A) #iterate forward one step
		}
		else
		{
			x[j]=NA #if initial condtion does not lie in (0,1) give a value of NA
		}
	}
	L1=abs((x[1]-x[2])/epsilon) #Calculate growth of initial perturbation of minus epsilon
	L2=abs((x[3]-x[2])/epsilon) #Calculate growth of initial perturbation of epsilon
	out[i]=mean(log2(c(L1,L2)),na.rm=T) # Find mean of lyapunov exponent for positive and negative perturbation ignoring NA values.
}
return(out)
}


