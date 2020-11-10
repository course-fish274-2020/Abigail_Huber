#reading in data ----
fish_data <- read.csv("data/Gaeta_etal_CLC_data.1.csv")

library(dplyr)
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))


# creating an additional column that classifies fish bigger than 300mm as big (others as small)

fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))

#scale length > 1 mm
fish_data_cat_clean <- filter(fish_data_cat, scalelength > 1)

