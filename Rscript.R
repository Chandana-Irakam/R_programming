# Load built-in datasets
data(mtcars)
data(iris)

### ----- 1. SIMPLE LINEAR REGRESSION ON mtcars -----

# View the first few rows
head(mtcars)

# Simple regression: mpg vs hp
model_mtcars_simple <- lm(mpg ~ hp, data = mtcars)

# Print model summary
cat("\n--- Simple Linear Regression: mpg ~ hp ---\n")
print(summary(model_mtcars_simple))

# Plot mpg vs hp with regression line
plot(mtcars$hp, mtcars$mpg,
     main = "MPG vs Horsepower",
     xlab = "Horsepower",
     ylab = "Miles Per Gallon (MPG)",
     pch = 19, col = "darkgreen")
abline(model_mtcars_simple, col = "blue", lwd = 2)


### ----- 2. MULTIPLE LINEAR REGRESSION ON mtcars -----

# Multiple regression: mpg ~ hp + wt + cyl
model_mtcars_multi <- lm(mpg ~ hp + wt + cyl, data = mtcars)

cat("\n--- Multiple Linear Regression: mpg ~ hp + wt + cyl ---\n")
print(summary(model_mtcars_multi))

# Diagnostic plots
par(mfrow = c(2, 2))
plot(model_mtcars_multi)
par(mfrow = c(1, 1))


### ----- 3. SIMPLE LINEAR REGRESSION ON iris -----

# View iris
head(iris)

# Simple regression: Petal.Length ~ Sepal.Length
model_iris <- lm(Petal.Length ~ Sepal.Length, data = iris)

cat("\n--- Simple Linear Regression: Petal.Length ~ Sepal.Length ---\n")
print(summary(model_iris))

# Plot Sepal.Length vs Petal.Length
plot(iris$Sepal.Length, iris$Petal.Length,
     col = iris$Species,
     pch = 19,
     main = "Petal Length vs Sepal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length")
abline(model_iris, col = "red", lwd = 2)

legend("topleft", legend = levels(iris$Species), col = 1:3, pch = 19)

