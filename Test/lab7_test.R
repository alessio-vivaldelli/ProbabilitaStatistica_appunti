weights <-c(488, 492, 498, 500, 502, 501, 495, 490, 503, 499)
alpha <- 0.05
sigma_0 <- 500

sd_s <- sd(weights)^2


#  A. Finda bilateralconfidence interval for the mean(95% confidence). 
avg <- mean(weights)
sd <- sd(weights)

qt_alpha <- qt(p=alpha/2, df = length(weights)-1)
left_interval <- avg - qt_alpha*(sd/sqrt(length(weights)))
right_interval <- avg + qt_alpha*(sd/sqrt(length(weights)))


st <- (avg-sigma_0)/(sd/sqrt(length(weights)))
p_value <- 2*pt(abs(st), df=length(weights)-1, lower.tail = FALSE)


# C. What if the researcher wants to determine if the average weight is significantly lower
# than 500g? Compute the p-value corresponding to this hypothesis test.

st < -qt(alpha, df=length(weights))

p_value <- pt(st, df=length(weights)-1)


t.test(x = weights, alternative = "two.side", mu = 500, conf.level=1-alpha)



