##making changes
##create a vector of 100 random numbers between 0 and 50

vec <- runif(n=100, min = 0, max = 50)

##sort values in vector, smallest to largest

sort(vec, decreasing = FALSE)

##writing function that calculates logarithm (base 10) of a vector
##subtracts this from the original vector, 
##and returns the new vector of values

minus_log10 <- function(x){
  vector_minus_log10 <- x - (log10(x))
  return(vector_minus_log10)
}

minus_log10(x)

##Testing the function minus_log10(x)

x <- c(2,4,6,8,10)

log10(x)

##log10(x) gives 0.3010300 0.6020600 0.7781513 0.9030900 1.0000000

minus_log10(x)

##minus_log10(x) gives 1.698970 3.397940 5.221849 7.096910 9.000000

##Use function minus_log10 with vector of random numbers (vec)

minus_log10(vec)

new_object <- minus_log10(vec)
  
##calculate the mean,
##standard deviation,
##and standard error of this new object, 
##save these into a single vector 
##where each of the objects are named


mean(new_object)
##22.15445
sd(new_object)
##13.66228

se <- function(x){
  std_er <- sd(x) / sqrt(length(x))
  return(std_er)
}  

se(new_object)
##1.366228


vec2 <- c(22.15445,13.66228,1.366228)

names(vec2) <- c("mean","sd","se")

##create a sequence of numbers from 15 to 100,

my_sequence <- seq(15,100)

##find the mean of the numbers in this vector >20 and <60,

mean(my_sequence[(my_sequence > 20) & (my_sequence < 60)])

##40

##sum of the numbers in the vector which are greater than 48:

sum(my_sequence[my_sequence > 48])

##write function which returns the max and min values of a vector,
##without using the max(), min(), or range() functions

##going to create a function that sorts vector, then gives first
##and last elements

my_vector <- c(12,43,57,75,12,14)

my_function <- function(x){
  sorted_vector <- sort(x, decreasing = FALSE)
  return(sorted_vector[c(1,(length(x)))]) 
}

my_function(my_vector)

##12 75