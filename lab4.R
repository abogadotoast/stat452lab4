pro = read_excel("propellant.xlsx")

#This gets the third column.
x<-pro[,3]
#This gets the second column.
y<-pro[,2]
#Regression of Y (response) with X (predictor)
lm(y~x)

lm1 <- lm(formula = y~x)

summary(lm1)

anova(lm1)

r<- residuals(lm1)
plot(r)


fitted.values(lm1)

#Residuals are difference between what is predicted and what is observed.

#What is the difference in the strength for 1, 2, 3.3 weeks in propellant?
newx<-data.frame(x=c(1,2,3.3))

fit1<-lm(y~x)

predict(fit1, newx, interval="prediction")
#This gives us a 95% PI for Y hat
#If rocket fuel is 1 week old,
#Y hat = 2590.669 (strength)
#And it can range from (2370,2810) at 95% CI.


#yhat = 2627.822 - 37.154*age
#yhat is strength
#2627.822 is point estimate of BO (it's BO hat)
#-37.154*age is point estimate of B1 (it's B1 hat)
#(Comes from fit1, or summary.)

x[2]+y[2]

a<-c(1,2,3)
b<-c(4,5,6,7,8,9)
a+b
a*b

a<b
b>a
b<a

summary(pro)

#Correlation is scaled covariance.

