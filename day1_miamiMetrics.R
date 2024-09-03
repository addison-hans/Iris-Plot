iris <- iris
View(iris)

install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

iris <- iris %>%
  filter(Species == "setosa")

ggplot(iris) +
  geom_point(aes(x=Petal.Length, y=Petal.Width))

ggplot(iris) +
  geom_point(aes(x=Petal.Length, y=Petal.Width)) +
  labs(title="Flower Petal Length and Width for Setosas", 
       x="Petal Length",
       y="Petal Width") +
  theme(plot.title = element_text(face="bold", size = 20))

ggsave("Iris_Plot_Setosas.png")
