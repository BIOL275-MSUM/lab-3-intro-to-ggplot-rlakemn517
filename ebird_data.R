
# Load Packages -----------------------------------------------------------

library(tidyverse)

# ebird Taxonomy ----------------------------------------------------------

library(auk)                          # load the auk package
birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
  as_tibble() %>%                     # tibbles print better in the console
  filter(category == "species")       # remove non-species taxa

distinct(birds, scientific_name)
count(birds, scientific_name)

ggplot(data = birds)
