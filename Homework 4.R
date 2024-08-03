library(ggplot2)
install.packages("tidyr")
library(tidyr)
library(dplyr)

cars93 <- MASS::Cars93
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "loess", formula = y ~ x, color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

# Load necessary libraries
library(MASS)
library(ggplot2)
library(mgcv)  # For gam method

# Load the data
cars93 <- MASS::Cars93

#3a

# Create the plot using the "lm" method
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with lm method")

# Create the plot using the "glm" method
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with glm method")

# Create the plot using the "gam" method
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "gam", formula = y ~ s(x, bs = "cs"), color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with gam method")

# Load necessary libraries
library(MASS)
library(ggplot2)
library(mgcv)  # For gam method

# Load the data
cars93 <- MASS::Cars93

# Plot with lm method
plot_lm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with lm method")

# Plot with glm method
plot_glm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with glm method")

# Plot with gam method
plot_gam <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "gam", formula = y ~ s(x, bs = "cs"), color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with gam method")

# Print plots
print(plot_lm)
print(plot_glm)
print(plot_gam)


#3B

# Plot with gam method
plot_gam <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = TRUE, method = "gam", formula = y ~ s(x, bs = "cs"), color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with gam method")

# Print plots
print(plot_lm)
print(plot_glm)
print(plot_gam)

# Plot with glm method
plot_glm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = TRUE, method = "glm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with glm method")

# Plot with lm method
plot_lm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = TRUE, method = "lm", color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000"))

#3c
#For every method above change the color of the line with the following color codes: #8fe388, #fe8d6d, #7c6bea
  
# Load necessary libraries
library(MASS)
library(ggplot2)
library(mgcv)  # For gam method

# Load the data
cars93 <- MASS::Cars93
  
  # Plot with lm method
  plot_lm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#8fe388") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with lm method")

# Plot with glm method
plot_glm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#fe8d6d") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with glm method")

# Plot with gam method
plot_gam <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "gam", formula = y ~ s(x, bs = "cs"), color = "#7c6bea") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with gam method")

# Print plots
print(plot_lm)
print(plot_glm)
print(plot_gam)


#3d
#Please search for the method to add a title to your ggplot figure and add titles for each figure to indicate the
#method that you used for smoothing

#prompt used: how do I add a title to your ggplot figure and add titles for each figure to indicate the
#method that you used for smoothing.

library(ggplot2)

# Plot with lm method
plot_lm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#8fe388") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with lm method")

# Plot with glm method
plot_glm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#fe8d6d") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with glm method")

# Plot with gam method
plot_gam <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "gam", formula = y ~ s(x, bs = "cs"), color = "#7c6bea") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with gam method")

print(plot_lm)
print(plot_glm)
print(plot_gam)

#3e
#Please search for the theme() function for ggplot and change the font size of the titles to 14 and match their
#colors with the line colors you used above

#prompt used: how do I change the theme for the ggplot and change the font size of the titles to 14 and match their colors with the lines I have used

library(ggplot2)

# Plot with lm method
plot_lm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "lm", color = "#8fe388") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with lm method") +
  theme(
    plot.title = element_text(size = 14, color = "#8fe388")
    )

print(plot_lm)

# Plot with glm method
plot_glm <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = FALSE, method = "glm", color = "#fe8d6d") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("Smooth with glm method") +
  theme(
    plot.title = element_text(size = 14, color = "#fe8d6d")
    )
print(plot_glm)

    # Ensure you have created the plot correctly
    plot_gam <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
      geom_point(color = "grey60") +
      geom_smooth(se = FALSE, method = "gam", formula = y ~ s(x, bs = "cs"), color = "#7c6bea") +
      scale_x_continuous(
        name = "Price (USD)",
        breaks = c(20, 40, 60),
        labels = c("$20,000", "$40,000", "$60,000")
      ) +
      scale_y_continuous(name = "Fuel-tank capacity\n(US gallons)") +
      ggtitle("Smooth with GAM Method") +
      theme(
        plot.title = element_text(size = 14, color = "#7c6bea")  # Set title font size and color
      )
    
    # Display the plot
    print(plot_gam)
    

print(plot_lm)
print(plot_glm)
print(plot_gam)

#4
#Please inspect the following code which can be also found in TimeSeries_Trends.R and try to run how it generates
#three time series in a single plot. Then, modify the start date and the manual coloring as you want to get a different
#version of the chart. Please indicate what you changed and submit the figure you created as a response to this question

load("/users/spencer/Downloads/DATA/preprint_growth.rda") #please change the path if needed
head(preprint_growth)
preprint_growth %>% filter(archive == "bioRxiv") %>%
  filter(count > 0) -> biorxiv_growth
preprints<-preprint_growth %>% filter(archive %in%
                                        c("bioRxiv", "arXiv q-bio", "PeerJ Preprints")) %>%filter(count > 0) %>%
  mutate(archive = factor(archive, levels = c("bioRxiv", "arXiv q-bio", "PeerJ Preprints")))
1
install.packages("lubridate")
library(lubridate)

preprints_final <- filter(preprints, date == ymd("2017-01-01"))
ggplot(preprints) +
  aes(date, count, color = archive, fill = archive) +
  geom_line(size = 1) +
  scale_y_continuous(
    limits = c(0, 600), expand = c(0, 0),
    name = "preprints / month",
    sec.axis = dup_axis( #this part is for the second y axis
      breaks = preprints_final$count, #and we use the counts to position our labels
      labels = c("arXivq-bio", "PeerJPreprints", "bioRxiv"),
      name = NULL)
  ) +
  scale_x_date(name = "year",
               limits = c(min(biorxiv_growth$date), ymd("2017-01-01"))) +
  scale_color_manual(values = c("#0072b2", "#D55E00", "#009e73"),
                     name = NULL) +
  theme(legend.position = "none")


library(ggplot2)
library(dplyr)
library(lubridate)

# Load the data
load("/users/spencer/Downloads/DATA/preprint_growth.rda") # Adjust path as needed

# Filter and prepare the data
preprint_growth %>% filter(archive == "bioRxiv") %>%
  filter(count > 0) -> biorxiv_growth

preprints <- preprint_growth %>% filter(archive %in% c("bioRxiv", "arXiv q-bio", "PeerJ Preprints")) %>%
  filter(count > 0) %>%
  mutate(archive = factor(archive, levels = c("bioRxiv", "arXiv q-bio", "PeerJ Preprints")))

preprints_final <- filter(preprints, date == ymd("2017-01-01"))

# Plot with updated start date and new colors
plot_updated <- ggplot(preprints) +
  aes(date, count, color = archive, fill = archive) +
  geom_line(size = 1) +
  scale_y_continuous(
    limits = c(0, 600), expand = c(0, 0),
    name = "preprints / month",
    sec.axis = dup_axis(
      breaks = preprints_final$count,
      labels = c("arXiv q-bio", "PeerJ Preprints", "bioRxiv"),
      name = NULL
    )
  ) +
  scale_x_date(name = "year",
               limits = c(ymd("2015-01-01"), ymd("2017-01-01"))) +  # Changed start date
  scale_color_manual(values = c("#1b9e77", "#d95f02", "#7570b3"),  # New colors
                     name = NULL) +
  theme(legend.position = "none")

# Display the plot
print(plot_updated)



file_path <- file.choose()
print(file_path)  # This will print the full path to the file
files <- list.files(path = "/path/to/your/directory", full.names = TRUE)
print(files)  # Prints the full paths of files in the specified directory

