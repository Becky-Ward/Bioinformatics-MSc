library(vroom)
library(tidyverse)
library(countrycode)
library(devtools)
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

pop_data.sort(date)
max(pop_data$date)

pop_2020 <- pop_data %>% 
  filter(date == 2020)

##the covid data
covid_long
##the population data
pop_2020

##the first 10 and last 10 unique values in the country column
## the ; operature acts as a new line - meaning you can run two bits of code which don't interact on the same line
head(unique(pop_2020$country), 10); tail(unique(pop_2020$country), 10)

## just look at the data from Australia:
covid_data %>% filter(Country.Region == "Australia")

## make a new data.frame from the old covid_long data.frame
covid_country <- covid_long %>% 
  ## we want to calculate the number of 
  ##deaths in each country and at each date:
  group_by(Country.Region, Date) %>% 
  ## and we want the sum of the "Death" column in these groups:
  summarise(Deaths = sum(Deaths))


covid_country$code <- countrycode(covid_country$Country.Region, 
            origin="country.name", destination="iso3c")

#warn <- covid_country[which(covid_country$Country.Region=="Diamond Princess"),]
#warn1 <- covid_country[which(is.na(covid_country$code)),]

head((covid_country),1)

##compare that to the values in the WB data
pop_2020 %>% filter(iso3c == "AFG")

##rename the 5th column so it works with the following code
names(pop_2020)[5] <- "value"

##demonstration of what select does:
head(pop_2020 %>% select(iso3c, value))

# join the two data sets:
covid_w_pop <- left_join(covid_country, 
                         pop_2020 %>% select(iso3c, value),
                         by = c("code" = "iso3c"))

##look at the new data set
covid_w_pop

which(names(covid_w_pop) == "value")

##change the name
names(covid_w_pop)[which(names(covid_w_pop) == "value")] <- "Population"

## quick visual check
covid_w_pop %>% filter(Country.Region=="Afghanistan" & Date == "1/22/20") 

##filter to leave the most recent data
most_recent <- covid_country %>% 
  filter(Date == max(covid_country$Date))

##sum the deaths
sum(most_recent$Deaths)

##make a new data.frame
global_deaths_day <- ?
  