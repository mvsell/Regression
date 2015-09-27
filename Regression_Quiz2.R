## Quiz 2 Regression Class
require(utils)
#Q 1
x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)
fit<-lm(y~x)

summary(fit)

# Q 3

fit <- lm(mpg~wt, data=mtcars)
summary(fit)

sumCoef <- summary(fit)$coefficients

CI <- mean(mtcars$wt) + c(1,-1) * qt(0.975, df = fit$df) * sumCoef[2,2]

predict(fit, newdata = data.frame(wt = mean(mtcars$wt)), interval = ("confidence"))

CI <- mean(mtcars$wt) + c(1,-1) * qt(0.975, df = fit$df) * sumCoef[2,2]

# Q 5

fit <- lm(mpg~wt, data=mtcars)
sumCoef <- summary(fit)$coefficients
# help(predict.lm)
newval <- predict(fit, newdata = data.frame(wt = 3), interval = ("prediction"))
newval

# Q 6

fit2 <- lm(mpg~wt, data=mtcars)
summary(fit2)

sumCoef <- summary(fit2)$coefficients
2*(sumCoef[2,1] + c(1,-1) * qt(0.975, df = fit2$df) * sumCoef[2,2])

# Q 7

fit1 <- lm(mpg~wt-1, data=mtcars)
fit2 <- lm(mpg~wt, data=mtcars)
summary(fit1)
summary(fit2)
str(summary(fit2))
.753/.72
