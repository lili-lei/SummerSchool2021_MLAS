delayplot<-function(x,d)
#
# delayplot(x,d);
# x is a univariate array
# d is the delay time
{
plot(x[1:(length(x)-d)],x[(1+d):length(x)], ylab=substitute(x[i+t],list(t=d)), xlab=expression(x[i]))
}
