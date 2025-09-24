# This is for git training, I will use R 

library(dplyr)

head(iris)
colnames(iris)

iris_sub <- iris |>
group_by(Species) |>
summarise(mean(Petal.Length))