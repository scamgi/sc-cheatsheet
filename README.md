# Cheatsheet di Segnali per le Comunicazioni

## Un formulario LaTeX per l'esame del Politecnico di Milano

Questo repository contiene il codice sorgente LaTeX per un cheatsheet (o formulario) completo per l'esame di **Segnali per le Comunicazioni**, basato sul programma e sugli esercizi tipici del Politecnico di Milano.

L'obiettivo è raccogliere in modo strutturato e facilmente consultabile le formule, le proprietà e le strategie risolutive più importanti per affrontare la prova d'esame.

### Contenuti del Cheatsheet

Il documento è suddiviso logicamente per coprire i principali argomenti d'esame:

1.  **Formulario Generale:**
    *   Principali coppie e proprietà della Trasformata di Fourier.
    *   Formule chiave per i processi casuali stazionari (media, potenza, varianza, autocorrelazione).
    *   Teorema di Wiener-Khinchin.
    *   Formule per il campionamento, la ricostruzione e la DFT.

2.  **Esercizio 1: Analisi di Segnali Deterministici**
    *   Strategie per calcolare la Trasformata di Fourier di segnali complessi.
    *   Guida al disegno dei grafici di modulo e fase.
    *   Gestione della convoluzione e della modulazione.

3.  **Esercizio 2: Campionamento e DFT**
    *   Analisi dello spettro di un segnale campionato e gestione dell'aliasing.
    *   Procedura per il calcolo del segnale ricostruito $x_R(t)$.
    *   Metodi rapidi per il calcolo della DFT di sequenze notevoli.

4.  **Esercizio 3: Processi Casuali Stazionari**
    *   Calcolo di autocorrelazione, varianza e potenza da dati parziali.
    *   Filtraggio di processi casuali e calcolo della Densità Spettrale di Potenza (DSP) in uscita.
    *   Uso della proprietà di non-negatività della DSP per determinare i parametri di un processo.

### Struttura del Repository

Il progetto è organizzato con una struttura modulare per facilitare la manutenzione e l'aggiunta di contenuti.

```bash
.
├── chapters/ # Contiene i capitoli del documento
│ ├── ese1.tex
│ ├── ese2.tex
│ ├── ese3.tex
│ └── formule_generali.tex
├── out/ # Cartella di output (creata automaticamente)
├── .vscode/ # Configurazione per VS Code
│ └── tasks.json
├── main.tex # File principale del progetto
├── preamble.tex # Preambolo con pacchetti e comandi
├── Makefile # Per la compilazione da terminale
└── README.md # Questo file
```

### Prerequisiti

Per compilare il documento, è necessario avere installato:

1.  Una **distribuzione LaTeX** completa, come [TeX Live](https://www.tug.org/texlive/), [MiKTeX](https://miktex.org/) (per Windows) o MacTeX (per macOS).
2.  L'utility **`latexmk`**, che è inclusa nella maggior parte delle distribuzioni TeX moderne.
3.  (Opzionale ma consigliato) **Visual Studio Code** con l'estensione [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) per un'esperienza di sviluppo integrata.

### Come Compilare

Il progetto può essere compilato in due modi.

#### Metodo 1: Tramite `Makefile` (da terminale)

Apri un terminale nella cartella principale del progetto e usa i seguenti comandi:

-   **`make build`** (o semplicemente `make`): Compila il documento.
-   **`make view`**: Compila il documento e apre il PDF risultante.
-   **`make clean`**: Rimuove tutti i file ausiliari e la cartella `out`.
-   **`make rebuild`**: Esegue una pulizia completa e ricompila il progetto da zero.

Il file `main.pdf` finale verrà generato nella cartella `out/`.

#### Metodo 2: Tramite Visual Studio Code

Se usi VS Code con l'estensione LaTeX Workshop, puoi compilare il progetto con una semplice scorciatoia da tastiera:

1.  Apri la cartella del progetto in VS Code.
2.  Premi `Ctrl+Shift+B` (su Windows/Linux) o `Cmd+Shift+B` (su macOS).

Questo comando avvierà il task di build definito nel file `.vscode/tasks.json`, che utilizza `latexmk` per creare il PDF. Errori e warning verranno mostrati direttamente nell'editor, rendendo il debug più semplice.

### Contributi

Se trovi errori, imprecisioni o vuoi suggerire miglioramenti, sentiti libero di aprire una **Issue** o una **Pull Request**. Ogni contributo è benvenuto!

### Licenza

Questo progetto è distribuito con licenza MIT.
