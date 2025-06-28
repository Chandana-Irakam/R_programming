library(tidyverse)

#1. SIMPLE LINEAR REGRESSION ON mtcars 

# View structure of mtcars
glimpse(mtcars)
model_simple <- lm(mpg ~ hp, data = mtcars)

cat("\n=== Simple Linear Regression (mpg ~ hp) ===\n")
print(summary(model_simple))

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "blue", size = 3) +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(
    title = "MPG vs Horsepower",
    x = "Horsepower",
    y = "Miles Per Gallon"
  ) +
  theme_minimal()


# 2. SIMPLE LINEAR REGRESSION ON iris 

# View structure of iris
glimpse(iris)
model_iris <- lm(Petal.Length ~ Sepal.Length, data = iris)

cat("\n=== Simple Linear Regression (Petal.Length ~ Sepal.Length) ===\n")
print(summary(model_iris))

ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(
    title = "Petal Length vs Sepal Length",
    x = "Sepal Length",
    y = "Petal Length"
  ) +
  theme_minimal()
