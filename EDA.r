library(ggplot2)

boxplot(Petal.Length ~ Species, data = iris,
        ylab = "Petal.Length", main = "Petal.Length by Species",
        notch = TRUE)

# add jittered points for detail
set.seed(42)
points(jitter(as.numeric(iris$Species), amount = 0.15),
       iris$Petal.Length,
       pch = 21, bg = cols[iris$Species], cex = 0.9)
