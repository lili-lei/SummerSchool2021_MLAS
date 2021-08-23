Qplingtime <- function(IC,epsilon,A,Q)
#
# T=Qplingtime(IC,epsilon,A,Q)
# Function to compute (experimentally)
# the Q-pling time the tent map defined
# by the parameters A. The function
# takes each initial condition and
# perturbs it by epsilon. We then
# iterate the two initial conditions
# until the error between them has
# Q-pled.
{

if (max(IC)>1 | min(IC)<0) #Check all initial conditions lie between 0 and 1
{
	warning('One or more initial conditions lies outside of the range (0,1)')
}

T=numeric() #define T

j=rep(0,length(IC)) #initialise j
for (i in 1:length(IC))
{	
	if (IC[i]-epsilon>0) #test that perturbed IC is in the range (0,1)	
	{	
		x1=IC[i]-epsilon	
		x2=IC[i]
		while(abs(x1-x2)<Q*epsilon)
		{		
			x1=tentmap(x1,1,A)
			x2=tentmap(x2,1,A)
			j[i]=j[i]+1	
		}
	}	
	else
	{
		j[i]=NA	
	}
}

j2=rep(0,length(IC)) #initialise j2
for (i in 1:length(IC))
{	
	if (IC[i]+epsilon<1)
	{	
		x1=IC[i]+epsilon	
		x2=IC[i]		
		while(abs(x1-x2)<Q*epsilon)
		{			
			x1=tentmap(x1,1,A)
			x2=tentmap(x2,1,A)
			j2[i]=j2[i]+1	
		}
	}
	else
	{
		j2[i]=NA
	}
}
out=numeric()
for (i in 1:length(j))
{
	out[i]=mean(c(j[i],j2[i]),na.rm=TRUE)
}
return(out)
}
