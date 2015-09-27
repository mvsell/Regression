library(swirl)
swirl()
# 1: Intro
plot(child~parent, galton)
plot(jitter(child,4)~parent, galton)
regrline<-lm(child~parent, galton)
abline(regrline,lwd=3,col='red')
summary(regrline)
# 2: Residuals
fit <- lm(child~parent, data= galton)
summary(fit)
mean(fit$residuals)
cov(fit$residuals,galton$parent)
ols.ic<-fit$coef[1]
ols.slope<-fit$coef[2]
lhs-rhs
all.equal(lhs, rhs)
varChild<-var(galton$child)
varRes<-var(fit$residuals)        
varEst<-var(est(ols.slope, ols.ic))        
all.equal(varChild,varRes + varEst)

efit<-lm(accel~mag+dist, attenu) # this uses the attenu earthquake dataset
mean(efit$residuals)
cov(efit$residuals,attenu$mag)
cov(efit$residuals,attenu$dist)

# 3:
# 4:
# 5:
# 6:
