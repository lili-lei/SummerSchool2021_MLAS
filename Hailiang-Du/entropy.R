entropy<-function(P)
#
# Function to compute the entropy in bits of a distribution
#
# E=entropy(P)
#
{
pos=numeric()
P=as.vector(P)
pos=which(P!=0)
return(-sum(P[pos]*log2(P[pos])))
}
