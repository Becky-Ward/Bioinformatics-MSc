##Week 3

##Making a matrix using matrix()
#Here we are using the seq() function, and the second argument is to
#specify the number of columns and number of rows.

matrix(seq(from = 1, to = 6, by = 1), ncol = 3, nrow = 2)

#creating a blank matrix full of NAs

matrix(NA, ncol = 3, nrow = 4)

#you can also shape a vector into a matrix using the dim() function

b <- seq(from = 1, to = 6, by = 1)

print(b)

# set the dimensions of the matrix (nrows and ncolumns)

dim(b) <- c(2,3)

print(b)

##the dimensions of the matrix - returned as the number of rows in the matrix first, and the number of columns second.
##here we make a matrix and look at the dimensions

dim(matrix(1:6, ncol = 3, nrow = 2))

my_data <-  rnorm(80, mean = 5, sd = 1)

my_data

new_matrix <- matrix(data = my_data, nrow = 4, ncol = 3)

new_matrix

our_matrix <- matrix(6:1, nrow = 2, ncol = 3)
our_matrix
our_matrix[1,2]

##return the values in the first row from the first and second column:
our_matrix[2,c(1,2)]

our_matrix[1,]

## a matrix of values:
init_mat <- matrix(1:6, ncol=3, nrow=2)


##add 1 to all of the values
init_mat + 1
mat_rep <- matrix(rep(1:3, each = 5), nrow = 3, ncol = 5, byrow = TRUE)

mat_rep

## a vector of the numbers 1 to 5
vec_seq <- 1:5

vec_seq

##where the first argument is the data to be included in the matrix, and the second and third arguments specify the shape of the matrix. 

mat_seq <- matrix(seq(from = 1, to = 20, length.out = 6), ncol = 3, nrow = 2)

##a vector to multiply by
vec_seq <- seq(from = 10, to = 4, length.out = 3)

##multiple the matrices using element-wise multiplication
mat_seq %*% vec_seq


mat_rep <- matrix(rep(1:3, each = 5), nrow = 3, ncol = 5, byrow = TRUE)
mat_rep

vec_seq <- 1:5

##multiple the matrices using element-wise multiplication

mat_rep * vec_seq
mat_seq <- matrix(seq(from = 1, to = 20, length.out = 6), ncol = 3, nrow = 2)

##a vector to multiply by
vec_seq <- seq(from = 10, to = 4, length.out = 3)

##multiple the matrices using element-wise multiplication
mat_seq %*% vec_seq


##make a matrix 
mat_seq <- matrix(seq(1, 20, length.out = 6), ncol=3, nrow=2)

my_array <- array(runif(100,0,30), dim = c(3,2,3,3))
my_array  

?rbinom()

name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas')
score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
questions = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')


new_dataframe <-  data.frame(name, score, questions, qualify)

str(new_dataframe)

dim.data.frame(new_dataframe)


mean_score <- df

new_dataframe.sum("score")
sum(new_dataframe["score"])

sum(df["score"])

##and a vector of letters

let_vec <- LETTERS[4:16]

wader_data <- vroom("Data/Workshop 3/wader_data.csv")
head(wader_data)

covid_dat <- vroom("https://raw.githubusercontent.com/chrit88/Bioinformatics_data/master/Workshop%203/time_series_covid19_deaths_global.csv")
mt <- tibble::rownames_to_column(mtcars, "model")
purrr::iwalk(
  split(mt, mt$cyl),
  ##save this split files in to the default directory
  ~ vroom_write(.x, glue::glue("mtcars_{.y}.csv"), "\t")
)

files <- fs::dir_ls(glob = "mtcars*csv")

##these are then the names of the files matching the above arguments:
files

vroom(files)
install.packages("tidyverse")
library("tidyverse")

class(covid_dat)
covid_dat
##change the first two names of our data frame
names(covid_dat)[1:2] <- c("Province.State", "Country.Region")

##so this says take our data frame called covid_dat
covid_long <- covid_dat %>%
  ##and then apply this function 
  pivot_longer(cols = -c( Province.State, 
                          Country.Region, 
                          Lat, 
                          Long))
covid_dat

##our data frame
covid_long <- covid_dat %>%
  ##and then apply this function 
  pivot_longer(cols = -c(Province.State:Long),
               names_to = "Date",
               values_to = "Deaths")


pop_1_data <- vroom("Data/Workshop 3/to_sort_pop_1.csv")

pop_2_data <- vroom("Data/Workshop 3/to_sort_pop_2.csv")


pop_1_data
pop_2_data

combined_pop1_2 <- inner_join(pop_1_data,pop_2_data, by = "species")

combined_pop1_2

