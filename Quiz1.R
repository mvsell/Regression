# Coursera Data Science Specialization - Regression - Aug 2015
# Quiz 1
# Question 1
x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
z<-rep
z
wmean<-weighted.mean(x,w)
wmean
# the weighted mean minimizes the least squares equation.

# Question 2
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
plot(x,y)

# Fit the regression through the origin and get the slope treating y as the outcome and x as the regressor. (Hint, do not center the data since we want regression through the origin, not through the means of the data.)

xc <- x - mean(x)
yc <- y - mean(y)

beta1 <- sum(y*x)/sum(x^2)

# Question 3
# Do data(mtcars) from the datasets package and fit the regression model with mpg as the outcome and weight as the predictor. Give the slope coefficient.

data(mtcars)
head(mtcars)
fit <- lm(mtcars$mpg~mtcars$wt, mtcars)
coef(fit)

# Question 6
x <- c(8.58, 10.46, 9.01, 9.64, 8.86)
Z <- (x-mean(x))/sd(x)
Z

# Question 7
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)
fit<-lm(y~x)
coef(fit)

# Question 9
x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
mean(x)
