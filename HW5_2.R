library(ggplot2)
library(tidyr)
library(dplyr)
library(lubridate)


load('~/Downloads/DATA/house_prices.rda')


str(house_prices)

house_reshaped <- house_prices %>%
  gather(key = "measure", value = "value", house_price_index, unemploy_perc, -state, -date)

str(house_reshaped)
head(house_reshaped)

ggplot(house_reshaped, aes(x = ymd(date), y = value, color = measure)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_date(
    breaks = ymd(c("1980-01-01", "2000-01-01", "2020-01-01")),
    labels = c("80", "00", "20")
  ) +
  labs(
    x = "Year",
    y = "Value",
    title = "Trends of House Price Index and Unemployment Percentage Over Years for Each State",
    color = "Measurement"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )

#this one gave me some trouble so I used GPT to help guide me through. I know we aren't supposed to just enter the question into GPT, 
#but after fooling around in R for a bit, I did that and allowed the program to guide me through each step. GPT also explained that the data 
#was transformed into a long format with 'measure' and 'value' columns. 