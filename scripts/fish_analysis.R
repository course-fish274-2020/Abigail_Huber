# Exercise 1 - First Commits ----
fish_data <- read.csv("data/Gaeta_etal_CLC_data.1.csv")
library(dplyr)
library(ggplot2)


#Exercise 2 - First Solo Commit ----
#creating column classifying fish bigger than 300mm as big (others as small)
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 200, "big", "small"))
# Change Category cut-off size
fish_data_cat <- fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))


# Exercise 3 - Second Solo Commit ----
#scale length > 1 mm
fish_data_cat_clean <- filter(fish_data_cat, scalelength > 1)


# Exercise 4 - Commit Multiple Files ----
#Changed file name from Gaeta_etal_CLC_data.csv to Gaeta_etal_CLC_data.1.csv


#Exercise 5 - Pushing Changes ----
ggplot(fish_data_cat, aes(x = length, y = scalelength, color = lakeid)) +
  geom_point() +
  labs( x = "Length", y = "Scalelength")
#Instructor comment
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram()


#Exercise 6 - Pulling and Pushing
# Modifying code above to look at narrower ranges by changing bins and argument
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins = 80) +
ggsave("scale_hist_by_length.jpg")
