# --- Variabili di configurazione ---
LATEXMK = latexmk
SRC = main.tex
OUT_DIR = out
PDF = $(OUT_DIR)/$(basename $(SRC)).pdf

# Flag per latexmk
# -pdf: Genera un output PDF
# -output-directory: Specifica la cartella di output per tutti i file generati
# -quiet: Rende l'output meno verboso (opzionale, rimuovilo per debug)
LFLAGS = -pdf -output-directory=$(OUT_DIR) -quiet

# Comando per aprire il PDF (cambia in base al tuo OS)
# macOS: open
# Linux: xdg-open
# Windows: start
OPEN_CMD = xdg-open


# --- Targets ---

# .PHONY dichiara che questi target non producono file con lo stesso nome.
.PHONY: all build clean rebuild view

# Il target di default: 'make' o 'make all' eseguirà 'make build'
all: build

# Target per compilare il PDF.
# La regola specifica che il PDF dipende dai file .tex.
# Verrà eseguita solo se uno dei file sorgente è stato modificato.
build: $(PDF)

$(PDF): $(SRC) preamble.tex chapters/*.tex
	@mkdir -p $(OUT_DIR)
	@echo "Compilando il progetto con latexmk..."
	$(LATEXMK) $(LFLAGS) $(SRC)
	@echo "PDF generato in $(PDF)"

# Target per aprire il PDF generato.
view: build
	@echo "Aprendo $(PDF)..."
	$(OPEN_CMD) $(PDF)

# Target per pulire e ricompilare da capo.
rebuild: clean all

# Target per pulire la directory dai file ausiliari e di output.
# -C (maiuscola): Rimuove tutti i file ausiliari.
# rm -rf: Rimuove la cartella di output.
clean:
	@echo "Pulizia dei file ausiliari..."
	$(LATEXMK) -C $(SRC)
	@echo "Rimozione della directory di output..."
	@rm -rf $(OUT_DIR)
	@echo "Pulizia completata."