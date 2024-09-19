#### Preamble ####
# Purpose: save data from Open Data Toronto
# Author: Dawson Li
# Date: 19 September 2024 
# Contact: dawson.li@mail.utoronto.ca
# License: N/A
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
library(tidyverse)


set.seed(304)

start_date <- as.Date("2018-01-01")
end_date <- as.Date("2023-12-31")

number_of_dates <- 100
#### Simulate data ####

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 15)
  )

write_csv(data, file = "data/raw_data/simulated.csv")




