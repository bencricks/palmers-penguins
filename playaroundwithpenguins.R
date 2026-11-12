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

# Save your plot into your figures or results folder
ggsave("figs/1_flipper_bodymass_regression.png") 

penguins_female <- subset(penguins, sex == "female")
head(penguins_female)

write_tsv(penguins_female, "results/1_penguin_female_only.txt")


