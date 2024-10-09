sigma_s <- 36

vals <- c(61,57,58,65,54,63,56,68,67,53,64,66)
sd_s <- sd(vals)^2
avg <- mean(vals)

st = ((length(vals)-1)*sd_s)/sigma_s

qchisq(p=1-0.05, df=length(vals)-1, lower.tail = FALSE)

pchisq(q=8.25, df=length(vals)-1, lower.tail = TRUE)
