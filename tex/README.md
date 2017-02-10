# sweki/tex

File per la trasformazione del sito da XHTML a Latex e PDF.

Se vuoi generare manualmente il file PDF, puoi posizionarti in questa directory e invocare `./maketex.sh`

Invece, per generare manualmente il file .tex, dovrai modificare lo script `maketex.sh` di questa directory. Lo script funziona in questo modo:
* verifica di essere stato invocato dalla directory giusta (`tex/`);
* crea il file `sweki.tex` e lo popola con alcuni comandi LaTeX;
* consulta l'indice dei contenuti HTML ([`../index.html`](../index.html)) tramite un template XSLT;
* per ogni file HTML trovato nell'indice, lo converte in formato .tex;
* include tutti i file convertiti nel documento `sweki.tex`;
* genera `sweki.pdf` a partire da `sweki.tex`;
* elimina i file temporanei creati (anche i file .tex).
