# Installare e caricare ggplot2
library(ggplot2)
library(gridExtra)
# Definire i parametri della distribuzione normale
mu <- 0    # Media
sigma <- 1 # Deviazione standard
lib <- 8

# Generare una sequenza di valori per l'asse x
x <- seq(0, 20, length.out = 10000/2)

# Calcolare la densità della distribuzione normale
y <- dchisq(x=x, df=lib)

# Creare un dataframe
df <- data.frame(x = x, y = y)
st <- 5
st_end <- dchisq(x=st, df=lib)*1.2

alpha <- 1.6
d_val <- dchisq(x=alpha, df=lib)*1.2
stringa_linea <- expression(paste("X_1-",alpha))
# Creare il grafico con ggplot2
p <- ggplot(df, aes(x = x, y = y)) +
  geom_area(data = subset(df, x <=alpha), aes(x = x, y = y), fill = "red", alpha = 0.5) +
  geom_segment(aes(x = alpha, xend = alpha, y = 0, yend = d_val), 
               color = "black", linetype = "dashed", size = 1) +
  annotate("text", x = alpha, y =d_val+0.005, label =stringa_linea, hjust=1) +
  
  geom_segment(aes(x = st, xend = st, y = 0, yend = st_end), 
               color = "darkgreen", linetype = "dashed", size = 1) +
  annotate("text", x = st, y =st_end+0.005, label ="st", hjust=1) +
  geom_point(aes(x=alpha, y=0), size=2.5)+
  geom_line(color = "blue") +
  labs(title = "",
       x = "",
       y = "") +
  theme_minimal()

p2 <- ggplot(df, aes(x = x, y = y)) +
  geom_area(data = subset(df, x <=alpha), aes(x = x, y = y), fill = "red", alpha = 1.5) +
  geom_area(data = subset(df, x <=st), aes(x = x, y = y), fill = "green", alpha = 0.5) +
  
  geom_segment(aes(x = alpha, xend = alpha, y = 0, yend = d_val), 
               color = "black", linetype = "dashed", size = 1) +
  annotate("text", x = alpha, y =d_val+0.005, label =stringa_linea, hjust=1) +
  
  geom_segment(aes(x = st, xend = st, y = 0, yend = st_end), 
               color = "darkgreen", linetype = "dashed", size = 1) +
  annotate("text", x = st, y =st_end+0.005, label ="st", hjust=1) +
  geom_point(aes(x=alpha, y=0), size=2.5)+
  geom_line(color = "blue") +
  labs(title = "Area = p-value",
       x = "",
       y = "") +
  theme_minimal()


grid.arrange(p, p2, ncol = 2)
