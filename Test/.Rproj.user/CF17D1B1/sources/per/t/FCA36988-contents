mean_x <- 85  
n <- 12
  
mean_y <- 81
m <- 10
  
alpha <- 0.05

sd_x <- 4

sd_y <- 5

Sp <- (sd_x^2*(n-1) + (m-1)*sd_y^2)/ (n+m-2)
# Sp = 20.05


st <- (mean_x-mean_y)/(sqrt((Sp)*(11/60)))
# st = 2.08

st > qt(p=alpha, df=n+m-2, lower.tail = FALSE)
# rifiuto H_0 se TRUE, è true
# qt(p=alpha, df=n+m-2, lower.tail = FALSE) = 1.72

# Calcolo con il p-value
pt(q=st, df=n+m-2, lower.tail = FALSE)
# il valore del p-value è minore di alpha quindi rifiuto
