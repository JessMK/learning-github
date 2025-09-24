library(ggplot2)

# Viz 1 

boxplot(Petal.Length ~ Species, data = iris,
        ylab = "Petal.Length", main = "Petal.Length by Species",
        notch = TRUE)

# add jittered points for detail
set.seed(42)
points(jitter(as.numeric(iris$Species), amount = 0.15),
       iris$Petal.Length,
       pch = 21, bg = cols[iris$Species], cex = 0.9)

# viz 2

cols <- c("setosa" = "tomato", 
            "versicolor" = "steelblue", 
            "virginica" = "darkgreen")

plot(iris$Sepal.Length, iris$Sepal.Width,
     pch = 19, cex = 1.1,
     col = cols[iris$Species],
     xlab = "Sepal.Length", ylab = "Sepal.Width",
     main = "Iris: Sepal Length vs Width (base R)")

legend("topright", legend = names(cols), pch = 19, col = cols)

