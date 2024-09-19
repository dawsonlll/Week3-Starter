#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
## Author: Dawson Li
# Date: 19 September 2024 
# Contact: dawson.li@mail.utoronto.ca
# License: N/A
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("/Users/dingshuo/Desktop/starter_folder-main/data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
