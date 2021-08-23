autoMI<-function(data,delay,BINS)
# I=autoMI(data,delay,BINS)
#
#
#
#
{
N=length(data)
I=numeric()
for (i in 0:delay)
{
	tmp=JointProb(data[1:(N-i)],data[(1+i):N],BINS)
	PX=unlist(tmp[1])
	PY=unlist(tmp[2])
	PXY=unlist(tmp[3])
	EX=entropy(PX)
	EY=entropy(PY)
	EXY=entropy(PXY)	
	I=c(I,EX+EY-EXY)
}
return(I)
}
