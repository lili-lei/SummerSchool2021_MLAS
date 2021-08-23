# ---
#   output:
#   pdf_document: default
# html_document: default
# ---
#   Lecture1 practical exercises 
# ========================================================
#   
#   In the first lecture, you have seen a few examples about the famous Logistic map. 
#   In this excercise, we will use RStudio to make some of those figures presented, 
#   which also helps you to get familar with RStudio.
# 
# The mathematical form of the Logistic map is 
# $$
#   x_{i+1}=ax_i(1-x_i).
# $$ 
#   
#   Let's first create a time series of Logistic map, you may use the logistic.R function file. 
#   To compile the function you need to first set the working directory to 
#   the one contains the function codes. For example:

setwd("/Users/hailiangdu/HDU/Teaching/NanJing_SummerSchool/workshops")
source('logistic.R')

# Now open logistic.R function code and take a look at the comments. 
#Create a time series of Logistic map using $a=4$ and $x_0\in(0,1)$ 
# (you can use the runif function to sample a point uniformly between 0 and 1). 
# And plot the time series.

# It is often useful to look at the histogram of a time series, 
# which reflects the unconditional distribution (climatology). 
# To do so, simply use this hist function.


# Now find the autocorrelation functions up to lag 50, 
# using the source function code autoCC.R. 
# Note the autocorrelation functions only measures linear relationship.


source('autoCC.R')

# To visualize the relationship between the current state and its lags, 
# we can use delay plots. Make delay plots with lag 1 and lag 2, 
# using the source function code delayplot.R. 


source('delayplot.R')


#In practice, a real time series almost always comes with observational noise. 
# Let's add IID Gaussian observational noise ($N(0,0.01^2)$) onto 
# the time series of Logistic map created above (use rnorm to create Gaussian samples), 
# and redo the plots based on the observations instead.

