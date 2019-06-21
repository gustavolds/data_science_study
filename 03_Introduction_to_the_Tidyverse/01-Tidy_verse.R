# Load the gapminder package
library(gapminder)

# Load the dplyr package
library(dplyr)

# Look at the gapminder dataset
gapminder

# Filters
gapminder %>%
  filter(year == 2007, country == 'United States')