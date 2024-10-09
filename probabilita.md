# Teoria della probabilità

##  Assiomi di Kolmogorov

Sia $ \Omega $ uno spazio campionario. Una funzione $ P $ che associa ad ogni sottoinsieme di $ \Omega $ un numero reale è detta probabilità se soddisfa le seguenti proprietà:

1. $P(A) \geq 0$ per ogni sottoinsieme $ A $ di $ \Omega $
2. $ P(\Omega) = 1 $
3. Sia $A,B \in W$ *disgiunti* t.c $A\cap B = 0$ allora:
    $ P(A \cup B) = P(A) + P(B) $

Questo ci dice sostanzialmente:
- La probabilità di un evento è sempre maggiore o uguale a 0, il che ha senso perché non possiamo avere probabilità negative.
- La probabilità dell'intero spazio campionario è 1, il che ha senso perché se consideriamo tutti gli eventi possibili, uno di essi deve verificarsi. Ad esempio se lanciamo un dado, la probabilità di ottenere un numero da 1 a 6 è 1.
- Se due eventi sono disgiunti, la probabilità che uno dei due si verifichi è la somma delle probabilità dei due eventi. Ad esempio, se lanciamo un dado, la probabilità di ottenere un numero pari o dispari è 1/2 + 1/2 = 1.

## Indipedenza di eventi

Due eventi $ A $ e $ B $ sono indipendenti se la probabilità che entrambi si verifichino è il prodotto delle probabilità che ciascuno si verifichi:
$$ P(A \cap B) = P(A) \cdot P(B) $$

Due eventi sono detti indipendenti se l'occorrenza di uno non fa cambiare la probabilità del secondo. Ad esempio se lanciamo un dado, la probabilità di ottenere un 6 è 1/6, la probabilità di ottenere un 5 è 1/6 e la probabilità di ottenere un 6 e un 5 è 1/6 * 1/6 = 1/36.

## Probabilità condizionata

La probabilità condizionata di un evento $ A $ dato un evento $ B $ è definita come:
$$ P(A|B) = \frac{P(A \cap B)}{P(B)} $$


## Calcolo dell'intersezione di probabilità

Per calcolare la probabilità dell'intersezione di due eventi possiamo usare la formula:

$$P(A \cap B) = \begin{cases} P(A)\cdot P(B) & \text{A,B Indipendenti} \\ 
P(A|B) \cdot P(B) = P(B|A)\cdot P(A) & \text{Caso GENERALE} \end{cases}
$$
## Calcolo per l'unione di probabilità

$$P(A \cup B) = \begin{cases} P(A) + P(B) & \text{A,B indipendenti} \\ 
P(A) + P(B) - P(A \cap B) & \text{caso GENERALE} \end{cases}$$

## Teorema di Bayes

Il teorema di Bayes è una formula che ci permette di calcolare la probabilità di un evento condizionato all'occorrenza di un altro evento. La formula è la seguente:

$$ P(B) = \sum_{i=1}^{n} P(B|E_i) \cdot P(E_i)
 $$

dove $ E_1, E_2, \ldots, E_n $ sono eventi disgiunti tali che $ E_1 \cup E_2 \cup \ldots \cup E_n = \Omega $ e $ P(E_i) > 0 $ per ogni $ i $.

Quindi ad esempio se stiamo esaminando un pezzo che è prodotto da cinque macchine diverse e vogliamo calcolare la probabilità che il pezzo sia prodotto da una macchina in particolare, possiamo usare il teorema di Bayes sapendo le probabilità che il pezzo sia prodotto da ciascuna macchina.

## Probabilità totale

La probabilità totale è una formula che ci permette di calcolare la probabilità di un evento $ B $ come somma delle probabilità di $ B $ condizionato all'occorrenza di un evento $ A $ moltiplicato per la probabilità di $ A $:
$$ P(B) = P(B|A) \cdot P(A) + P(B|A^c) \cdot P(A^c) $$
dove $ A^c $ è il complementare di $ A $.

***

## Variabili aleatorie discrete

Una variabile aleatoria è una funzione che associa ad ogni elemento dello spazio campionario un numero reale. Una variabile aleatoria è detta *discreta* se può assumere solo un numero finito o numerabile di valori, $X \sim \{X_1,\ldots, X_n\}, ~~ X_n \in \mathbb{N}$.
Ad eseempio, se lanciamo un dado, la variabile aleatoria che associa ad ogni faccia del dado il numero corrispondente è una variabile aleatoria discreta.

La funzione di probabilità di una variabile aleatoria discreta è definita come:
$$ p_x(x_i) = P(X = x_i) $$

La probabilità degli eventi è una funzione che associa ad ogni elemento dello spazio campionario un numero reale, che è proprio la sua probabilità che può accadere. Ad esempio, se lanciamo un dado, la probabilità di ottenere un 6 è 1/6.

La funzione cumulativa di una variabile aleatoria discreta è definita come:
$$ F_x(x_i) = P(X \leq x_i) = \sum_{x_j \leq x_i} p_x(x_j) $$
Quindi somma le probabilità di tutti gli eventi minori o uguali a $ x_i $.

### Valore atteso

Il valore atteso di una variabile aleatoria discreta è definito come:
$$ E[X] = \sum_{i=1}^{n} x_i \cdot p_x(x_i) $$
Si tratta di una media pesata dei valori assunti von i pesi daalle probabilità di ciascun valore.

### Varianza

La varianza di una variabile aleatoria discreta è definita come:
$$ Var[X] = E[(X - E[X])^2] = \sum_{i=1}^{n} (x_i - E[X])^2 \cdot p_x(x_i) $$
La varianza è una misura della dispersione dei valori di una variabile aleatoria attorno al suo valore atteso.


## Variabili aleatorie continue

Una variabile aleatoria è detta *continua* se può assumere un numero infinito di valori in un intervallo. Ad esempio, se misuriamo la lunghezza di un pezzo, la variabile aleatoria che associa ad ogni pezzo la sua lunghezza è una variabile aleatoria continua.

La funzione di densità di probabilità di una variabile aleatoria continua è definita come:

$$ P(a \leq X \leq b) = \int_{a}^{b} f_x(x)dx $$
La funzione cumulativa di una variabile aleatoria continua è definita come:
$$ F_x(x) = P(X \leq x) = \int_{-\infty}^{x} f_x(t)dt $$
Quindi somma le probabilità di tutti gli eventi minori o uguali a $ x $.

In questo caso se proviamo a calcolare la probabilità di un singolo evento, otterremo 0, perché la probabilità di un singolo evento è 0. Quindi dobbiamo calcolare la probabilità di un intervallo di valori.

### Valore atteso

Il valore atteso di una variabile aleatoria continua è definito come:
$$ E[X] = \int_{-\infty}^{\infty} x \cdot f_x(x)dx $$
Si tratta di una media pesata dei valori assunti von i pesi daalle probabilità di ciascun valore.

### Varianza

La varianza di una variabile aleatoria continua è definita come:
$$ Var[X] = E[(X - E[X])^2] = \int_{-\infty}^{\infty} (x - E[X])^2 \cdot f_x(x)dx $$
La varianza è una misura della dispersione dei valori di una variabile aleatoria attorno al suo valore atteso.

**NB:** per semplificare il calcolo della varianza possiamo usare la formula:
$$ Var[X] = E[X^2] - E[X]^2 $$