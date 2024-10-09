# Ipotesi
In questa sezione si considererà sempre un campione $X_1,..,X_n$ la coui distribuzione dipende da un parametro non noto $\theta$. Invece di stimare il parametro, ora vogliamo verificare un'ipotesi che lo riguarda su un campione di dati osservati.
Un'**ipotesi statistica** è un affermazione sul parametro $\theta$, è un assunzione del tipo $\theta=\theta_o, \theta\ \geq \theta_o, \theta < \theta_o$ (con $\theta$ valore qualsiasi).

La procedura che consiste nella verifica di un'ipotesi statistica è detta **test di ipotesi**. Si tratta di una procedura decisionale che permette di accettare o rifiutare un'ipotesi statistica. L'approccio consistenel creare una regola di decisione che ci permetta di stabilire se accettare o rifiutare l'ipotesi in base ai dati osservati.

## Le ipotesi
- $H_0 \rightarrow \text{(Ipotesi Nulla)}$: è l'ipotesi che vogliamo verificare, la nostra convinzione iniziale.
- $H_1 \rightarrow \text{(Ipotesi Alternativa)}$: Ipotesi in contrapposizione con l'ipotesi nulla.

## La statistica test e la regione critica
Per **TEST STATISTICO** si intende il procedimento per cui, sulla base del campione ossservato, si decide se **falsificare** o meno l'ipotesi nulla $H_0$.

L'elemento basilare nella ferifica di ipotesi è la **statistica test**. Si tratta di una funzione $$ST(X_1,..,X_n)$$che generalmente è uno stimatore del parametro $\theta$.

Il rifiuto o meno dell'ipotesi nulla si fa tramite una **REGIONE CRITICA** $C$ con la regola:
>$$\text{Se } ST(X_1,..,X_n) \in C \text{ allora si rifiuta } H_0 \\ \text{Se } ST(X_1,..,X_n) \notin C \text{ allora si accetta } H_0$$

Intuitivamente possiamo dire che $C$ contiene i valori del parametro *molto distanti* dai valori attesi sotto $H_0$.


## Errori di 1° e 2° specie e Significatività
Nel tentativo di verificare un'ipotesi nulla, si possono commettere due tipi di errori:
- **Errore di I specie**: si commette quando si rifiuta $H_0$ quando in realtà è vera.
- **Errore di II specie**: si commette quando si accetta $H_0$ quando in realtà è falsa.

In genere si impone un livello di soglia $\alpha$ e si costruisce un test in modo che la probabilità di commettere un errore di I specie, non superi $\alpha$.
Questo valore $\alpha$ è detto **Livello di Significatività**, e significa:
$$\mathbb{P}_{H_0}(ST \in C) \le \alpha$$
*Indica la probabilità di rifiutare $H_0$ anche quando essa è vera, quindi la probabilità di commettere un errore di 1° specie*
Dove $\mathbb{P}_{H_0}$ indica la probabilità calcolata assumendo vera $H_0$.
w

**L'obbiettivo di un test non è stabilire se una data ipotesi sia vera, ma solo se essa sia compatibile con i dati osservati**

## P-Value
Il **P-Value** è la probabilità di osservare un valore della statistica test almeno estremo quanto quello osservato, assumendo vera l'ipotesi nulla.
Indica a quale livello di significatività corrisponde una regione critica $C$ il cui estremo è pari al valore osservato della *statistica test*, ossia a quale livello di significatività il valore osservato $st$ valica il confine della regione critica.
Fornisce il liveello di significatività minimo per cui si passa al rifiuto dell'ipotesi nulla.
Esempio per un unilaterale destro:

!['Grafico'](/img/pvalue.jpg)
# Test per una popoloazione

## Test per la media di una popolazione normale con varianza nota
Sia $X_1,..,X_n$ un campione casuale da una popolazione normale con media $\mu$ e varianza $\sigma^2$ nota.
Tipologia di test, con varianza nota e $\mu_0$ il valore che ci da l'esercizio ad esempio:
|  $H_0$ |  $H_1$ |  Statistica test($st$) |  Rifito $H_0$ se |
|---|---|---|---|
| $\mu = \mu_0$  | $\mu \ne \mu_0$ | |  $\|st\| > z_{\frac{\alpha}{2}}$  |
| $\mu \le \mu_0$  | $\mu > \mu_0$ |    $$st = \frac{\bar{X}-\mu_0}{\frac{\sigma}{\sqrt{n}}}$$ |  $st > z_{\alpha}$  |
| $\mu \ge \mu_0$  | $\mu < \mu_0$ ||  $st < -z_{\alpha}$  |

*esempio*: supponiamo che un produttore dichiari che le loro macchine hanno una durata nominale di 10 anni:
L'ipotesi nulla sarà la dichiarazione del fornitore che dobbiamo verificare, quindi $H_0: \mu = 10$ e $H_1: \mu \ne 10$. In questo caso quardiamo che sia diversa, quindi può essere maggiore o minore.
Volendo, possiamo anche fare un test unilaterale, ad esempio $H_0: \mu \le 10$ e $H_1: \mu < 10$, per smentire le sue dichiarazioni.

La regione critica in un caso Unilaterale, con $\mu \le \mu_0$ sarà $st < -z_{\alpha}$

### Come risolverlo usando il p-value
*Consideriamo un esempio dove $st=-1.661$:*

Il p-value è quel valore **limite** di $\alpha$ del livello di significatività per cui si ha $st = -z_{\alpha} \iff \alpha=1.661$ (valore massimo/minimo di $\alpha$ per cui si rifiuta $H_0$)
Quindi:
$$ \mathbb{P}(Z>st)=\alpha \iff 1 - \Phi(1.661)=\alpha \iff \alpha = 0.0485$$
Quindi per tutti i valori superiori a 0.0485 rifiuteremo $H_0$.

### Grafici

!['Grafico'](/img/z_alpha.png)
In questo grafico si può vedere una casistica di quando rifiutare $H_0$ in base al valore di $st$ e $\alpha$. Infatti $st$ in questo caso appartiene alla regione critica, quindi rifiutiamo $H_0$.

In questo secondo grafico invece vediamo come il valore del p-value viene calcolato. Quindi ci dice il minimo valore di $\alpha$ per cui rifiutiamo $H_0$. 
!['Grafico'](/img/pval_lot.png)
In questo caso $\alpha=$ 0.05 sarebbe un valore troppo grande, infatti, con i calcoli, risulta che il valore di $\alpha$ per cui accettiamo $H_0$ è 0.0485.

## Test per la media di una popolazione normale con varianza incognita

Tipo di test, con varianza incognita e $\mu_0$ il valore che ci da l'esercizio ad esempio:
|  $H_0$ |  $H_1$ |  Statistica test($st$) |  Rifiuto $H_0$ se |
|---|---|---|---|
| $\mu = \mu_0$  | $\mu \ne \mu_0$ | |  $\|st\| > t_{{\frac{\alpha}{2}},n-1}$  |
| $\mu \le \mu_0$  | $\mu > \mu_0$ |    $$st=\frac{\bar{X}-\mu_0} {\frac{\hat{s}}{\sqrt{n}}} \sim t_{n-1} \\ \text{Dove }\hat{s}\text{ è la } \underline{deviazione} \text{ } \underline{standard} \text{ (sd)}$$ |  $st > t_{{\alpha},n-1}$  |
| $\mu \ge \mu_0$  | $\mu < \mu_0$ ||  $st < -t_{{\alpha},n-1}$  |

### Test calcolato
I dati sulle pulsazioni di 10 persone sono:
$$67\;64\;75\;80\;60\;63\;78\;68\;65\;68$$
Si sa che la frequenza media è di 72 battiti. Si vuole determinare se i dati raccolti sono il linea con tale valore ad una significatività del 5%.

Dati:
- $H_0: \mu=72$
- $H_1: \mu \ne 72$
- $\alpha=0.05$

**Soluzione 1**:
Dobbiamo calcolare:
- Media campionaria $\bar{X}$
- Deviazione standard campionaria $\hat{s}$
- Statistica test $st$
- Regione critica

1. Media campionaria:
$$\bar{X}=\frac{1}{10}\sum_{i=1}^{10}X_i=68.8$$
2. Deviazione standard campionaria:
$$\hat{s}=\sqrt{\frac{1}{9}\sum_{i=1}^{10}(X_i-\bar{X})^2}=6.67$$
3. Statistica test:
$$st=\frac{\bar{X}-\mu_0}{\frac{\hat{s}}{\sqrt{n}}}=\frac{68.8-72}{\frac{6.67}{\sqrt{10}}}=-1.51$$
4. Regione critica:
La regione critica la calcoliamo con la funzone inversa di densità del t-student, con il valore $\frac{\alpha}{2}$ e $n-1$ gradi di libertà:
```R
qt(p=0.025, df=length(vals)-1, lower.tail = FALSE) # 1.81
```

**Conclusione**
Il valore di $st$ è inferiore al valore calcolato con la funzione inversa di densità del t-student, quindi **accettiamo** $H_0$.

**Soluzione 2**:
Dobbiamo calcolare:
- Statistica test $st$
- P-Value

1. Statistica test:
$$st=\frac{\bar{X}-\mu_0}{\frac{\hat{s}}{\sqrt{n}}}=\frac{68.8-72}{\frac{6.67}{\sqrt{10}}}=-1.51$$

2. P-Value:
$$ 2\cdot\mathbb{P}(X\ge st) ~~\text{dove}~~ X\sim t_{n-1}$$
```R
2*pt(q=st, df=length(vals)-1, lower.tail = FALSE) # 0.16
```
**Conclusione**
Il valore del p-value è più grande di $\alpha$, quindi **accettiamo** $H_0$.    


## Test per la varianza di una popolazione normale con media e varianza incognite

Tipo di test, con $\sigma_0$ il valore che ci da l'esercizio ad esempio:
|  $H_0$ |  $H_1$ |  Statistica test($st$) |  Rifiuto $H_0$ se |
|---|---|---|---|
| $\sigma^2 = \sigma_0^2$  | $\sigma^2 \ne \sigma_0^2$ | |  $st > \chi^2_{\frac{\alpha}{2},n-1}$ o $st < \chi^2_{1-\frac{\alpha}{2},n-1}$  |
| $\sigma^2 \le \sigma_0^2$  | $\sigma^2 > \sigma_0^2$ |    $$st=\frac{(n-1)\bar{S}^2}{\sigma_0^2} \sim \chi^2_{n-1} \\ \text{Dove }\bar{S}\text{ è la } \underline{varianza} \text{ (var)}$$ |  $st > t_{{\alpha},n-1} $$ |  $st > \chi^2_{\alpha,n-1}$  |
| $\sigma^2 \ge \sigma_0^2$  | $\sigma^2 < \sigma_0^2$ ||  $st < \chi^2_{1-\alpha,n-1}$  |  

### Esempio calcolato
Si verifichi l'ipotesi che la varianza della poploazione sia $\sigma^2=36$, contro l'alternativa che sia minore di tale valore a livello di significatività $\alpha=5\%$, sulla base dei dati osservati di un caaampione di 12 uova:
$$61\;57\;58\;65\;54\;63\;56\;68\;67\;53\;64\;66$$

Dati:
- $H_0: \sigma^2=36$
- $H_1: \sigma^2 < 36$
- $\alpha=0.05$
- Siamo nel caso in cui:
    - $H_0 \rightarrow \sigma^2=\sigma_0^2$
    - $H_1 \rightarrow \sigma^2 < \sigma_0^2$

Per confutare $H_0$ dobbiamo accerrarci che $st<\chi^2_{1-\alpha,n-1}$, altrimenti la accettiamo.

**Soluzione 1**:
Dobbiamo calcolare:
- Varianza campionaria $\bar{S}^2$
    - Media campionaria $\bar{X}$
- Statistica test $st$
- Regione critica

1. Varianza campionaria:
Media campionaria:
$$\bar{X}=\frac{1}{12}\sum_{i=1}^{12}X_i=61$$
Varianza campionaria:
$$\bar{S}^2=\frac{1}{11}\sum_{i=1}^{12}(X_i-\bar{X})^2=27.45$$
2. Statistica test:
$$st=\frac{(n-1)\hat{s}^2}{\sigma_0^2}=\frac{11\cdot27.45}{36}=8.25$$
3. Regione critica:
La regionr critica la calcoliamo con la funzone inversa di densità del chi-quadro, con il valore $1-\alpha$ e $n-1$ gradi di libertà:
```R
qchisq(p=1-0.05, df=length(vals)-1, lower.tail = FALSE) # 4.57
```
*NB: dobbiamo usare il parametro lower.tails = FALSE*

**Conclusione**
Il valore di $st$ è inferiore al valore calcolato con la funzione inversa di densità del chi-quadro, quindi **accettiamo** $H_0$.
Questo perchè $st \notin C$.

**Soluzione 2**:
Dobbiamo calcolare:
- Statistica test $st$
- P-Value

1. Statistica test:
$$st=\frac{(n-1)\hat{s}^2}{\sigma_0^2}=\frac{11\cdot27.45}{36}=8.25$$
2. P-Value:
$$\mathbb{P}(X\le st) ~~\text{dove}~~ X\sim\chi^2_{1-\alpha, n-1}$$\
```R
pchisq(q=st, df=length(vals)-1, lower.tail = TRUE) # 0.309
```
**Conclusione**
Il valore del p-value è più grande di $\alpha$, quindi **accettiamo** $H_0$.

#### Spiegazione grafica
In questo grafico è riportata la spegazione grafica del p-value.
!['Grafico'](/img/chi_sqr.png)
A sinistra possiamo vedere l'area rossa che equivale a $0.05$, il valore che equivale alla linea nera è stato calcolato tramite la funzione inversa di densità del chi-quadro.
Invece $st$ è stato calocato con la formula sopra. 
Nel grafico di destra vediamo come viene calcolato il valore del p-value, che è l'area sotto la curva del chi-quadro fino a $st$. Quindi ora vediamo anche graficamente che l'area formato da $st$ è maggiore di $0.05$, quindi **accettiamo** $H_0$.

## Test asintotici per la media di una popolazione di Bernoulli
Sia $X_1,..,X_n$ un campione casuale da una popolazione di Bernoulli con parametro incognito $p$.
Tipologia di test, con parametro $p_0$ il valore che ci da l'esercizio ad esempio:
|  $H_0$ |  $H_1$ |  Statistica test($st$) |  Rifiuto $H_0$ se |
|---|---|---|---|
| $p = p_0$  | $p \ne p_0$ | |  $\|st\| > z_{\frac{\alpha}{2}}$  |
| $p \le p_0$  | $p > p_0$ |    $$st=\frac{\hat{p}-p_0}{\sqrt{\frac{p_0(1-p_0)}{n}}} \sim N(0,1)$$ |  $st > z_{\alpha}$  |
| $p \ge p_0$  | $p < p_0$ ||  $st < -z_{\alpha}$  |

Dove $\hat{p}=\frac{1}{n}\sum_{i=1}^{n}X_i$ è lo stimatore di massima verosimiglianza di $p$.


## Nota sul calcolo del p-value
Per il calcolo del p-value seguiamo questa tabella:
| Bilaterale  | Laterale sinistro |  Laterale destro |
|---|---|---|
| $2\cdot\mathbb{P}(Z>\|st\|)$  | $\mathbb{P}(Z<st)$ |  $\mathbb{P}(Z>st)$  |

**NB** Quindi in R dobbiamo prestare **attenzione** al valore di `lower.tail`:
Se è `TRUE` allora calcoliamo $\mathbb{P}(Z<st)$, altrimenti se è falso $\mathbb{P}(Z>st)$.


# Tabella riassuntiva 
| Casistica | |  $H_0$ |  $H_1$ |  Statistica test($st$) |  Rifiuto $H_0$ se |
|---|---|---|---|---|---|
| Test per la media di una popolazione normale con varianza nota | | $\mu = \mu_0$  | $\mu \ne \mu_0$ | |  $\|st\| > z_{\frac{\alpha}{2}}$  |
| | | $\mu \le \mu_0$  | $\mu > \mu_0$ |    $$st = \frac{\bar{X}-\mu_0}{\frac{\sigma}{\sqrt{n}}} \sim N(0,1)$$ |  $st > z_{\alpha}$  |
| | | $\mu \ge \mu_0$  | $\mu < \mu_0$ ||  $st < -z_{\alpha}$  |
| Test per la media di una popolazione normale con varianza incognita | | $\mu = \mu_0$  | $\mu \ne \mu_0$ | |  $\|st\| > t_{{\frac{\alpha}{2}},n-1}$  |
| | | $\mu \le \mu_0$  | $\mu > \mu_0$ |    $$st=\frac{\bar{X}-\mu_0} {\frac{\hat{s}}{\sqrt{n}}} \sim t_{n-1}$$ |  $st > t_{{\alpha},n-1}$  |
| | | $\mu \ge \mu_0$  | $\mu < \mu_0$ |con $\hat{s}$ deviazione standard(*sd*)|  $st < -t_{{\alpha},n-1}$  |
| Test per la varianza di una popolazione normale con media e varianza incognite | | $\sigma^2 = \sigma_0^2$  | $\sigma^2 \ne \sigma_0^2$ | |  $st > \chi^2_{\frac{\alpha}{2},n-1}$ o $st < \chi^2_{1-\frac{\alpha}{2},n-1}$  |
| | | $\sigma^2 \le \sigma_0^2$  | $\sigma^2 > \sigma_0^2$ |    $$st=\frac{(n-1)\bar{S}^2}{\sigma_0^2} \sim \chi^2_{n-1}$$ |  $st > \chi^2_{\alpha,n-1}$  |
| | | $\sigma^2 \ge \sigma_0^2$  | $\sigma^2 < \sigma_0^2$ |con $\bar{S}^2$ varianza campionaria(*var*) |  $st < \chi^2_{1-\alpha,n-1}$  |
| Test asintotici per la media di una popolazione di Bernoulli | | $p = p_0$  | $p \ne p_0$ | |  $\|st\| > z_{\frac{\alpha}{2}}$  |
| | | $p \le p_0$  | $p > p_0$ |    $$st=\frac{\hat{p}-p_0}{\sqrt{\frac{p_0(1-p_0)}{n}}} \sim N(0,1)$$ |  $st > z_{\alpha}$  |
| | | $p \ge p_0$  | $p < p_0$ | con $\hat{p}$ calcolato come $\frac{1}{n}\sum_{i=1}^{n}(X_i)$ |  $st < -z_{\alpha}$  |


## Calcolo p-value
| Bilaterale  | Laterale sinistro |  Laterale destro |
|---|---|---|
| $2\cdot\mathbb{P}(Z>\|st\|)$  | $\mathbb{P}(Z<st)$ |  $\mathbb{P}(Z>st)$  |


## Tabella funzioni di R
| Funzione  | Descrizione |  Esempio |
|---|---|---|
| `qt(p=0.025, df=length(vals)-1, lower.tail = FALSE)`  | Calcola il valore di $t$ per un livello di significatività $\alpha$ |  `qt(p=0.025, df=length(vals)-1, lower.tail = FALSE)`  |
| `pt(q=st, df=length(vals)-1, lower.tail = FALSE)`  | Calcola il p-value per un test laterale destro |  `pt(q=st, df=length(vals)-1, lower.tail = FALSE)`  |
| `qchisq(p=1-0.05, df=length(vals)-1, lower.tail = FALSE)`  | Calcola il valore di $\chi^2$ per un livello di significatività $\alpha$ |  `qchisq(p=1-0.05, df=length(vals)-1, lower.tail = FALSE)`  |
| `pchisq(q=st, df=length(vals)-1, lower.tail = TRUE)`  | Calcola il p-value per un test laterale sinistro |  `pchisq(q=st, df=length(vals)-1, lower.tail = TRUE)`  |
