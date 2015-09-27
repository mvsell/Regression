# Regression Quiz 3

z = mtcars$cyl + mtcars$wt
summary(lm(mpg~z, data = mtcars))
