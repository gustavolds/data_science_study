library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year, then save it as by_year
by_year <- gapminder %>%
  group_by(year) %>%
  summarize( medianGdpPercap = median(gdpPercap) )

# Create a line plot showing the change in medianGdpPercap over time
ggplot( by_year,
        aes(  x = year,
              y = medianGdpPercap)
) + 
  geom_line() +
  expand_limits(y = 0)


#####################################
library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year & continent, save as by_year_continent
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize( medianGdpPercap = median(gdpPercap) )

# Create a line plot showing the change in medianGdpPercap by continent over time
ggplot( by_year_continent,
        aes(  x = year,
              y = medianGdpPercap,
              color = continent)
) + 
  geom_line() +
  expand_limits(y = 0)


#####################################
library(gapminder)
library(dplyr)
library(ggplot2)

# Summarize the median gdpPercap by year and continent in 1952
by_continent <- gapminder %>%
  filter(year == 1952) %>%
  group_by( continent ) %>%
  summarise( medianGdpPercap = median(gdpPercap) )

# Create a bar plot showing medianGdp by continent
ggplot( by_continent,
        aes( x = continent,
             y = medianGdpPercap
        )
) +
  geom_col()

#####################################
library(gapminder)
library(dplyr)
library(ggplot2)

# Filter for observations in the Oceania continent in 1952
oceania_1952 <- gapminder %>%
  filter( continent == 'Oceania', year == 1952 )


# Create a bar plot of gdpPercap by country
ggplot( oceania_1952,
        aes( x = country,
             y = gdpPercap ) 
) + 
  geom_col()


#####################################
library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a histogram of population (pop)
ggplot(
  gapminder_1952, 
  aes( x = pop)
) +
  geom_histogram(binwidth = 0.1e8)


#####################################
library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a histogram of population (pop), with x on a log scale
ggplot(
  gapminder_1952, 
  aes( x = pop)
) +
  geom_histogram() +
  scale_x_log10()


#####################################
library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Create a boxplot comparing gdpPercap among continents
ggplot(
  gapminder_1952, 
  aes( x = continent,
       y = gdpPercap)
) +
  geom_boxplot() +
  scale_y_log10()


#####################################
library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Add a title to this graph: "Comparing GDP per capita across continents"
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) +
  geom_boxplot() +
  scale_y_log10() + 
  labs( title =  "Comparing GDP per capita across continents")

#####################################

library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)

# Scatter plot comparing pop and lifeExp, faceted by continent
ggplot(
  gapminder_1952,
  aes( x = pop,
       y =lifeExp)  
) + 
  geom_point() + 
  facet_wrap(~continent) + 
  scale_x_log10()

#####################################
#####################################

#####################################
#####################################
#####################################
#####################################
#####################################
#####################################
#####################################
#####################################
#####################################
#####################################
