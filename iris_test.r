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

data(iris)
cols <- c("setosa" = "tomato", 
            "versicolor" = "steelblue", 
            "virginica" = "darkgreen")

plot(iris$Sepal.Length, iris$Sepal.Width,
     pch = 19, cex = 1.1,
     col = cols[iris$Species],
     xlab = "Sepal.Length", ylab = "Sepal.Width",
     main = "Iris: Sepal Length vs Width (base R)")

legend("topright", legend = names(cols), pch = 19, col = cols)
