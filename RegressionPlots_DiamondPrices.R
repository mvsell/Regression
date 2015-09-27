library(UsingR)
data(diamond)
library(ggplot2)
g = ggplot(diamond, aes(x=carat, y=price),)
g = g + xlab("Mass (carats)")
g = g + ylab("Price (SIN $)")
g = g + geom_point(size=6, colour = "black", alpha=0.2)
g = g + geom_point(size=5, colour = "blue", alpha=0.2)
g = g + geom_smooth(method = "lm", colour ="black")
g
# Fitting the linear regression model
fit <- lm(price~carat, data=diamond)
coef(fit)
# interp: beta_1: we estimate an expected 3721 $ increase in price for every carat increase in mass of the diamond. beta_0: the intecept of -259$ is the expected price of a 0 carat diamond.

# Mean center the data
fit2 <- lm(price~I(carat-mean(carat)), data=diamond)
coef(fit2)
# interp: beta_1 stays the same. beta_0: the intecept of 500$ is the expected price for the averaged sized diamond of the data (i.e. 0.2042)

fit3 <- lm(price~I(carat*10), data=diamond) # will reflect the price for 1/10th of a carat.
coef(fit3)

# Predicting the size of a diamond
newx<-c(0.16, 0.27, 0.34) # sizes in carats
# calculation "by hand" by simply pluging into the formula Y = beta_0 + beta_1*X
coef(fit)[1] + coef(fit)[2] * newx 
# calculation using predict()
predict(fit, newdata = data.frame(carat = newx))

# MV Regression Examples - Week 3
require(datasets)
data(swiss)
install.packages("GGally")
require(GGally)
require(ggplot2)
g = ggpairs(swiss, lower = list(continuous = "smooth"),params = c(method = "loess"))
g
            
