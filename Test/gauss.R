# Installare e caricare ggplot2
library(ggplot2)
library(gridExtra)
# Definire i parametri della distribuzione normale
mu <- 0    # Media
sigma <- 1 # Deviazione standard

# Generare una sequenza di valori per l'asse x
x <- seq(-4, 4, length.out = 1000)

# Calcolare la densità della distribuzione normale
y <- dnorm(x, mean = mu, sd = sigma)

# Creare un dataframe
df <- data.frame(x = x, y = y)

# Definire il valore a partire dal quale evidenziare l'area
highlight_value <- -1.5
st_val <- highlight_value -0.5
# Definire l'altezza della linea verticale
line_height <- 0.2
stringa_linea <- expression(paste(alpha, "=0.05"))
# Creare il grafico con ggplot2
p <- ggplot(df, aes(x = x, y = y)) +
  geom_line(color = "blue") +
  geom_area(data = subset(df, x <= highlight_value), aes(x = x, y = y), fill = "red", alpha = 0.5) +
  geom_segment(aes(x = highlight_value, xend = highlight_value, y = 0, yend = line_height), 
               color = "black", linetype = "dashed", size = 1) +
  annotate("text", x = highlight_value, y =line_height+0.02, label =stringa_linea, hjust=1) +
    labs(title = "",
       x = "",
       y = "") +
  theme_minimal()

p2 <- ggplot(df, aes(x = x, y = y)) +
  geom_line(color = "blue") +
  geom_area(data = subset(df, x <= highlight_value), aes(x = x, y = y), fill = "red", alpha = 0.5) +
  geom_segment(aes(x = st_val, xend = st_val, y = 0, yend = line_height), 
               color = "green", linetype = "solid", size = 1) +
  annotate("text", x = st_val, y =line_height+0.02, label ="st", hjust=1) +
  labs(title = "",
       x = "",
       y = "")+
  theme_minimal()

 

# Mostrare il grafico
#print(p)
grid.arrange(p, p2, ncol = 2)



