PCA<-function(data,T_pca)
  #
  # Function to carry out Principle Component Analysis on a data set
  #
  # PCA_list=PCA(data,T_pca)
  #
  #
{
  # Construct the trajectory matrix
  length_data=length(data)
  T=matrix(rep(0,(length_data-T_pca)*(T_pca)),length_data-T_pca,T_pca)
  print(dim(T))
  for (i in 0:(T_pca-1))
  {
    T[,i+1]=data[(1+i):(length_data-T_pca+i)];
  }
  Sigma=sqrt(svd(t(T)%*%T,0)$d)
  V=svd(t(T)%*%T,0)$v
  PCA_list=list("Sigma"=Sigma,"V"=V)
  return(PCA_list)
}
