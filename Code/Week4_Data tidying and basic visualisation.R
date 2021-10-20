library(vroom)
library(tidyverse)
install.packages("devtools")

library(wbstats)

covid_data <- vroom("Data/Workshop 3/time_series_covid19_deaths_global.csv")

?names

names(covid_data)[c(1,2)] <- c("Province.State","Country.Region")
covid_data

##Take the covid data 
covid_long <- covid_data %>%
  ##and then apply this function 
  pivot_longer(cols = -c(Province.State:Long),
               names_to = "Date",
               values_to = "Deaths")

devtools::install_github("nset-ornl/wbstats")

##extract the population data for all countries
pop_data <- wb_data(indicator = "SP.POP.TOTL", 
                    start_date = 2002, 
                    end_date = 2020)

##convert it to a tibble
pop_data <- as_tibble(pop_data)
