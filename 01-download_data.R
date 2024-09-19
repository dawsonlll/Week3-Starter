#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Tornto
## Author: Dawson Li
# Date: 19 September 2024 
# Contact: dawson.li@mail.utoronto.ca
# License: N/A
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
package <- show_package("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

resources <- list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb")

datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

data <- filter(datastore_resources, row_number()==1) %>% 
  get_resource()
dir.create("data/raw_data", recursive = TRUE, showWarnings = FALSE)
dir.create("inputs/data", recursive = TRUE, showWarnings = FALSE)

#### Save data ####
write_csv(data, "data/raw_data/raw_data.csv") 
#### Save data ####

# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "inputs/data/raw_data.csv") 

         
