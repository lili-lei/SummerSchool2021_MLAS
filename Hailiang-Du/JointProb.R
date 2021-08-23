JointProb<-function(X,Y,B)
# P=JointProb(X,Y,B)
# Function to estimate the joint
# probability between X and Y given B
# histogram bins
# carry out the checks
{
N=length(X)
minX=numeric()
rangeX=numeric()
minY=numeric()
rangeY=numeric()
minX<-min(X);
rangeX<-max(X)-min(X);
minY<-min(Y);
rangeY<-max(Y)-min(Y);

X=floor((X-minX)/rangeX*(B-1));
Y=floor((Y-minY)/rangeY*(B-1));
tmp=hist(X,breaks=-0.5:(B-0.5),plot=FALSE)
PX=tmp$counts
PX=PX/N

tmp=hist(Y,breaks=-0.5:(B-0.5),plot=FALSE)
PY=tmp$counts
PY=PY/N

PXY=matrix(rep(0,B*B),B,B);
for (j in 1:N)
{
	PXY[X[j]+1,Y[j]+1]=PXY[X[j]+1,Y[j]+1]+1
}
PXY=PXY/N
return(list(PX,PY,PXY))
}

