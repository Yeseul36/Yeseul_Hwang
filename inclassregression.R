
#Question 2
moneyfst=c(20,32,35,34,40,51,52,56,57,68)
moneyscd=c(23,34,36,44,42,51,54,57,54,62)

plot(moneyfst,moneyscd)
moneyscdtwo=moneyscd+30

cor.test(moneyfst,moneyscd)
cor.test(moneyfst,moneyscdtwo)

r=cor(moneyfst,moneyscd)
se=sqrt(1-r^2)/(length(moneyfst)-2)

# two test have same result, so we can conclude that 
# adding constants to one or both variables does not affect the correlation coefficient

moneyfsttwo=moneyfst*100
cor.test(moneyfsttwo,moneyscd)

# two test have same result, so we can conclude that 
# multiplying constants to one or both variables does not affect the correlation coefficient

#Question 3

homerange=c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
mortality=c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)

b1=homerange
b2=mortality

x=cbind(homerange,mortality)
plot(x)

m=lm(b2~b1)
abline(m)
summary(m)


b11=c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
b22=c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25)

plot(b11,b22)
n=lm(b22~b11)
abline(n)
summary(n)

