#### Preamble ####
# Purpose: Sanity check of the data
## Author: Dawson Li
# Date: 19 September 2024 
# Contact: dawson.li@mail.utoronto.ca
# License: N/A
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("/Users/dingshuo/Desktop/starter_folder-main/data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))

