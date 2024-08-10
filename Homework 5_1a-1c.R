
library(ggplot2)


load('~/Downloads/DATA/house_prices.rda')

str(house_prices)


ggplot(house_prices, aes(x = date, y = house_price_index, color = state)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(
    breaks = c(1980, 2000, 2020),
    labels = c("80", "00", "20")
  ) +
  labs(
    x = "Year",
    y = "House Price Index",
    title = "Trends of House Price Index Over Years for Each State"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    legend.position = "none"
  )

#1b
if (!require(tidyr)) install.packages("tidyr")
if (!require(dplyr)) install.packages("dplyr")
library(tidyr)
library(dplyr)

str(house_prices)

house_reshaped <- house_prices %>%
  gather(key = "measure", value = "value", house_price_index, unemploy_perc, -state, -date)


str(house_reshaped)
head(house_reshaped)

#1c

library(ggplot2)

ggplot(house_reshaped, aes(x = date, y = value, color = measure)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(
    breaks = c(1980, 2000, 2020),
    labels = c("80", "00", "20")
  ) +
  labs(
    x = "Year",
    y = "Value",
    title = "Trends of House Price Index and Unemployment Percentage Over Years for Each State",
    color = "Measure"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )






