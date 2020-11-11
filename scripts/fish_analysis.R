# First Commits ----
fish_data <- read.csv("data/Gaeta_etal_CLC_data.1.csv")

# Building a History
library(dplyr)
#creating column classifying fish bigger than 300mm as big (others as small)
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))

# Change Category cut-off size
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

# Second Solo Commit ----
#scale length > 1 mm
fish_data_cat_clean <- filter(fish_data_cat, scalelength > 1)
