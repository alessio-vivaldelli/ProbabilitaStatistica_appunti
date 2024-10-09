data <-c(48.1, 50.6, 47.5, 54.8, 51.0, 47.5, 51.5, 52.2, 51.7, 49.1)
alpha <- 0.05

# H0: sigma<10
sd <- sd(data)
n <- length(data)
sigma_0 <- 10

st <- ((n-1)*(sd^2))/(sigma_0)
st

st>qchisq(p=alpha, df=n-1)
# We accept null hypothesis


p_value <- pchisq(q=st, df=n-1, lower.tail = TRUE)
p_value

S2 <-var(data) # Compute the sample variance
S2


stat_test<-(n-1) * S2 / 10

pchisq(stat_test, df= n-1, lower.tail= TRUE)


library(ggplot2)
n_sampling<-200; s_size<-10; mu <-20; sigma <-5; set.seed(123)
CI_df<-data.frame("Lower" = NA, "Avg" = NA, "Upper" = NA)
for(i in 1:n_sampling){
  sample <-rnorm(s_size, mean= mu, sd= sigma)
  CI_df[i, ] <-c(mean(sample) + c(-1.96, 0, 1.96) * sd(sample)/sqrt(s_size))
}
CI_df<-CI_df[order(CI_df$Avg), ]
contains_the_true_mean<-ifelse(CI_df$Lower> mu | CI_df$Upper< mu, "No", "Yes")
table(contains_the_true_mean)
library(ggplot2)
ggplot(data = CI_df, aes(x = Avg, y = 1:n_sampling)) +
  geom_point() + geom_errorbar(aes(xmin= Lower, xmax= Upper, 
                                   color = contains_the_true_mean)) +
  theme(legend.position= "none") +
  geom_vline(aes(xintercept= mu), linetype= "dashed") +
  labs(x = "Confidence intervalfor the mean", y = "Random samples",
       title= paste(n_sampling, "random samples from a normaldistribution\nmean=",
                    mu, "sigma =", sigma),
       subtitle = "95% Confidence Intervals")





data <- c(67,64,75,80,60,63,78,68,65,68)
mean(data)
sd(data)
st <- (mean(data) - 72)/(sd(data)/sqrt(length(data)))

qt(p=0.05, df=length(data), lower.tail = FALSE)
p_value <- pt(q=abs(st), df=length(data), lower.tail = FALSE)
2*p_value
