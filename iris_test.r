# This is for git training, I will use R 

library(dplyr)

head(iris)
colnames(iris)

iris_sub <- iris |>
group_by(Species) |>
summarise(mean(Petal.Length))

iris_sub_sepal  <- iris |>
group_by(Species) |>
summarise(mean(Sepal.Width))

# I would really like to add a visualization to this code file
