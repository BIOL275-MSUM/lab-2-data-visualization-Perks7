#question 9

library(tidyverse)
library(palmerpenguins)

#question 10

penguins
view(penguins)
ggplot(data=penguins)
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#question 11

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, colour = species))
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, colour = species, shape = island))

#question 13

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, colour = species, shape = island))+
  facet_wrap(~ species, nrow = 1)
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, colour = species, shape = island))+
  facet_grid(species ~ island)
