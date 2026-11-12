library(tidyverse)
library(palmerpenguins)

glimpse(penguins)

penguin_data <- penguins

# Run a linear regression
model1 <- lm(body_mass ~ flipper_len, data = penguin_data)
summary(model1)

# Create a plot
ggplot(penguins, aes(x = flipper_len, y = body_mass, colour = species)) +
  geom_point() +
  stat_smooth(method = "lm") 
