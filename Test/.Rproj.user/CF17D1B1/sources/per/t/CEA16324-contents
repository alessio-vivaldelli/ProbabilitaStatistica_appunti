# Caricare i pacchetti
library(ggplot2)
library(dplyr)

# Generare un dataset di esempio
set.seed(101)
n <- 10
x <- runif(n, 0, 10)
y <-   1.5 * x + rnorm(n, sd = 3)

# Creare un data frame con i dati
data <- data.frame(x = x, y = y)

# Fit del modello di regressione lineare
model <- lm(y ~ x, data = data)

# Prevedere i valori sulla base del modello
data$predicted <- predict(model)

# Calcolare gli errori (residui)
data$residuals <- data$y - data$predicted

# Creare il grafico
ggplot(data, aes(x = x, y = y)) +
  geom_point() + # Punti
  geom_smooth(method = "lm", se = FALSE, color = "blue") + # Linea di regressione
  geom_segment(aes(xend = x, yend = predicted), color = "red", linetype = "dashed") + # Linee degli errori

  theme_minimal()



# Installare e caricare ggplot2
library(ggplot2)

# Generare un dataset di esempio
set.seed(123)
x <- runif(50, 0, 10)
y <- 5 + rnorm(50, sd = 3)  # y non dipende da x, quindi β1 = 0

# Creare un data frame con i dati
data <- data.frame(x = x, y = y)

# Creare il grafico
ggplot(data, aes(x = x, y = y)) +
  geom_point() + # Punti
  geom_hline(yintercept = mean(y), color = "blue", linetype = "dashed") + # Linea media
  labs(title = "Esempio di Regressione Lineare con Coefficiente Angolare 0",
       subtitle = "Nessuna correlazione tra la variabile indipendente e la risposta",
       x = "Variabile X",
       y = "Variabile Y") +
  theme_minimal()



data <- c(2.75, 2.62, 2.74, 3.85, 2.34, 2.74, 3.93, 4.21, 3.88, 4.33, 3.46, 4.52, 2.43, 3.65, 2.78, 3.56, 3.01)
mean(data)
median(data)
sd(data)
var(data)
