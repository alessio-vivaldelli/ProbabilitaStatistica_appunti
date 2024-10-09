

data <- c( 3.595, 5.048, 3.410, 3.288, 5.585, 4.429, 3.691, 4.372, 4.044,5.986)
d <- 0

for (i in data) {
  d <- d + log(i)
}

length(data)/(d- length(data))

49.6/16
(2.56/15)

qnorm(p=0.05/2, lower.tail = FALSE)


t <- qt(0.05/2, df=19, lower.tail = FALSE)
t

452.3 - t*(17.4/sqrt(20)) - 452.3 + t*(17.4/sqrt(20))

z <- qnorm(p=0.1/2)
 -z*0.02
z <- qnorm(p=0.05/2)
 -z*0.02
z <- qnorm(p=0.02/2)
 -z*0.02
z <- qnorm(p=0.01/2)
 -z*0.02




n <- 15
x <- 912
sd <- 64

(x - qt(0.01/2, df=15-1)*(64/sqrt(n))) - 49.2


(x - qnorm(p=0.01/2)*(64/sqrt(n))) -42.6





p <- 0.67
int <- qnorm(0.05/2)*(sqrt((p*(1-p))/2121))
p -  int - (p + int)



data <- c( 35, 24,
          51,
          42,
          40,
          33,
          37,
          41,
          44,
          29)

x <- mean(data)
sd <- sd(data)
sd
a1 <- qt(0.05/2, df=length(data))
a2 <- qt(0.01/2, df=length(data))
a1
a2
int1 <- a1*(sd/sqrt(length(data)))
int2 <- a2*(sd/sqrt(length(data)))

c(x-int1, x+int1)
c(x-int2, x+int2)

data <- c( 35, 24,
           51,
           42,
           40,
           33,
           37,
           41,
           44,
           29)

mean(data)
sd(data)

qt(p=0.01/2, df=9)







data <- c(1115,1097,1120,1095,1105,1075,1079,1114)
mean(data)
sd(data)



data <- c(220,250,210,230,240,250,210)
mean(data)
sd(data)




data <- c(903,900,900,900,900,898,904,898,910,900)
mean(data)
sd(data)^2

var(data)

qchisq(p=1-(0.01/2), df=length(data)-1)




q <- 0.15
n <- 100
alpha <- 0.05


p_0 <- 0.20

st <- (p-p_0)/(sqrt((p_0*(1-p_0))/n))
st

qnorm(alpha/2)



data <- c(2.1, 2.2,1.9,1.8,2.3,2.2,1.7,1.8,2.1,1.9)
mean(data)


t.test(x=data, alternative = "two.sided")










data <- c(0.161, 0.083, 0.142, 0.156, 0.103, 0.091, 0.162, 0.113)
mean(data)
sd(data)


data <- c(12.1, 12.2, 12.7, 12, 12.8, 12.9, 12.65, 12.75)
mean(data)






data_x <- c(115,112,107,119,115,138,126,105,104,115)
data_y <- c(128,115,106,128,122,145,132,109,102,117)
data <- data_x - data_y
n <- 10

avg <- mean(data_x) - mean(data_y)
sd <- sd(data)
sd

st <- (avg - 0)/(sd/sqrt(n))
st < -qt(p=0.05, df=n-1)




n <- 33
m <- 43
s_x <- 3.91^2
s_y <- 3.87^2


var_p <- ((n-1)*s_x + (m-1)*s_y)/(n+m-2)

st <- (20.38 - 21.57)/(sqrt(var_p*(1/n + 1/m)))
t <- qt(p=0.05, df=n+m-2)
t
st
pt(q=st, df=n+m-2)*2





st <- (20.38 - 21.57)/(sqrt(s_x/n + s_y/m))
st
t <- qnorm(p=0.05)
st > -t




n <- 20
x <- 221
sx <- 33^2

m <- 30
y <- 211
sy <- 36^2

s_p <- ((n-1)*sx + sy*(m-1))/(m+n-2)
s_p
st <- (x-y)/(sqrt(s_p*(1/n+1/m)))
t <- -qt(p=0.05, df = n+m-2)
st
t
st>t




data_x <- c(42,47,37,9,33,70,54,27,41,18)
data_y <- c(22,29,9,9,26,36,38,32,33,14)
data <- data_x - data_y
avg <- mean(data_x) - mean(data_y)
sd <- sd(data)


st <- (avg - 0)/(sd/sqrt(length(data)))
t <- qt(p=0.05, df=length(data)-1)
st
t
st>-t




st <- (3124-3088)/sqrt(((669^2)/294) + ((728^2)/286))
st
qnorm(p=0.05)

pnorm(q=st, lower.tail = FALSE)





