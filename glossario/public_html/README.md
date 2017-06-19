# sweki/glossario

Directory contenente un glossario di termini, nei seguenti formati:
* MySQL ([`glossario.sql`](glossario.sql));
* XHTML ([`index.html`](https://fiup.github.io/sweki/glossario/index.html));
* PDF (come appendice di [`sweki.pdf`](https://github.com/FIUP/sweki/raw/master/tex/sweki.pdf));
* Markdown (il file che stai leggendo).

Di seguito i termini del glossario:
* __accoppiamento__: Grado di dipendenza tra le varie componenti di un sistema.
C'è interdipendenza cattiva tra parti diverse se:
-si fanno assunzioni dall'esterno su come le parti facciano il loro mestiere all'interno (variabili, locazioni, tipi)
-s'impongono vincoli dall'esterno sull'interno di una parte (ordine d'azioni, uso di dati/formati/valori)
-si condividono frammenti delle stesse risorse (strutture dati)
Un sistema è un insieme organizzato, ha quindi bisogno d'un po' d'accoppiamento e la buona progettazione lo tiene basso.
È una proprietà esterna delle componenti: dato U il grado d'utilizzo reciproco di M componenti, il massimo accoppiamento si ha per U=M*M; nullo quando U=0;
Le metriche sono il Fan-in e Fan-out strutturale.
Una buona progettazione produce componenti con Fan-in elevato. Inglese: _coupling_.
* __algoritmo__: Sequenza finita di passi per la risoluzione di un problema. Inglese: _algorithm_.
* __allocazione di risorse (per un progetto)__: Assegnare attività a ruoli e, poi, ruoli a persone.
* __ambiente di lavoro__: L'insieme di persone, di ruoli, di procedure e l'infrastruttura la cui qualità determina la produttività del progetto.
Deve essere: completo, ordinato, aggiornato. Inglese: _work environment_.
* __Amministrare un progetto__: Equipaggiare, organizzare e gestire l’ambiente di lavoro e di produzione (regole+procedure+strumenti&servizi; supporto di tutti i processi istanziati nel prj).
Le attivtà sono: la redazione e la manutenzione di regole e procedure di lavoro, il reperimento, l'organizzazione, la gestione e la manutenzione di risorse informatiche per l'erogazione dei servizi di supporto. Inglese: _Project administration_.
* __amministratore di progetto (profilo professionale)__: Chi controlla che ad ogni istante della vita del progetto le risorse (umane, materiali, economiche e strutturali) siano presenti e operanti; inoltre, gestisce la documentazione e controlla il versionamento e la configurazione.
Non compie scelte gestionali ma attua le scelte tecnologiche concordate coi responsabili aziendali e del progetto Inglese: _project administrator_.
* __analisi dei requisiti__: Definire cosa bisogna fare. Inglese: _requirements analysis_.
* __analisi dinamica__: Valutazione di un sistema (o di una sua componente) basata sul suo comportamento durante l'esecuzione.
Richiede l'esecuzione del programma, viene effettuata tramite prove (test) ed è usata sia nella verifica che nella validazione.
La ripetibilità è un requisito essenziale: AMBIENTE(hw, stato iniziale), SPECIFICHE (ingressi rich., comportamenti attesi), PROCEDURE (esecuzione ed analisi dei risultati).
Strumenti usati: Driver, Stub e Logger. Inglese: _dynamic analysis_.
* __analisi statica__: Valutazione di un sistema (o di una sua componente) basata sulla sua forma, struttura, contenuto o documentazione. Non richiede l'esecuzione del software in alcuna sua parte, è essenziale quando il sistema non è ancora completamente disponibile. Studia le caratteristiche del codice sorgente e talvolta del codice oggetto e della documentazione associata, alla ricerca della conformità a regole date, l'assenza da difetti e la presenza di proprietà positive.
Applicano ad ogni prodotto di processo (non solo sw: per tutti i processi attivati nel prj).
Metodi di lettura (desk check) sono applicati solo per prodotti semplici).
Metodi formali, si basano sulla prova assistita di proprità, la cui dimostrazione dinamica può essere troppo onerosa; verifica di equivalenza o generazione automatica. Inglese: _static analysis_.
* __analista (profilo professionale)__: Chi ha il compito di individuare, a partire dai bisogni del cliente, il problema da fornire ad un progettista; fa l'analisi dei requisiti. Inglese: _analyst_.
* __application logic__: La parte di un software che è specifica di quel software e non è intesa per essere riusata in altri software.
* __architettura__: Decomposizione di un sistema in componenti; l'organizzazione di tali componenti, le interfacce necessarie all'interazione tra queste e l'ambiente ed i paradigmi di composizione delle componenti.
La struttura organizzativa di un sistema o componente. Inglese: _architecture_.
* __Architettura: qualità possedute__: >Sufficienza: è capace di soddisfare tutti i req.
>Comprensibilità: può essere capita dai portatori d'interesse
>Modularità: è suddivisa in parti chiare e ben distinte
>Robustezza: sopporta ingressi diversi dall'utente e dall'ambiente
>Flessibilità: permette modifiche a costo contenuto, al variare dei req.
>Riusabilità: le sue parti possono essere utilmente impiegate in altre applicazioni
>Efficienza: nel tempo, nello spazio, nelle comunicazioni
>Affidabilità: altamente probabile che svolga bene il suo compito quando utilizzata.
>Disponibilità: necessita di poco o nullo tempo di manutenzione fuori linea
>Sicurezza rispetto a malfunzionamenti: è senete da malfunzionamenti gravi
>Sicurezza rispetto ad intrusioni: i sui dati e le sue funzioni non sono vulnerabili a intrusioni
>Semplicità: ogni parte contiene solo il necessario e niente di superfluo
>Incapsulazione (information hiding): l'interno delle componenti non è visibile dall'esterno
>Coesione: le parti che stanno insieme hanno gli stessi obiettivi
>Basso accoppiamento: parti distinte dipendono poco o niente le une dalle altre.
* __attività__: Parte di un processo che dev'essere compiuta entro un determinato periodo di tempo. Inglese: _activity_.
* __Attributi di processo (requisiti)__: Pongono vincoli sui processi impiegati nel prodotto (come devo farlo?).
Requisiti di vincolo (realizzativo, normativo, contrattuale).
* __Attributi di prodotto (requisiti)__: Definiscono le caratteristiche richieste al sistema (cosa devo fare?).
Requisiti funzionali, prestazionali, di qualità (di prodotto).
* __baseline__: Nel ciclo di vita di un progetto, punto d'arrivo tecnico dal quale non si retrocede.
* __batteria di prove__: Insieme di casi di prova. Inglese: _test suite_.
* __best practice__: La prassi che, per esperienza e per studio, abbia mostrato di garantire i migliori risultati in circostanze note e specifiche.
* __bibliografia__: Elenco delle fonti di un documento. Inglese: _bibliografy_.
* __budget__: Tempo e denaro a disposizione.
* __business logic__: La parte di un software che ha a che fare con il dominio applicativo del software; questa parte è tipicamente riusabile e quindi condivisa tra diversi software che operano nello stesso dominio.
* __Business management__: Chi fissa gli obiettivi in termini di costi, profitto, priorità strategiche
* __caos__: Contrario di organizzazione. Inglese: _chaos_.
* __caso d'uso__: Insieme di scenari che hanno in comune un obiettivo per un utente. Inglese: _use case_.
* __caso di prova__: Terna di valori (input, output, ambiente) che specifica il comportamento che un sistema (o parte di esso) deve avere in un caso specifico. Inglese: _test case_.
* __ciclo di vita (di un prodotto)__: Insieme degli stati che il prodotto assume, dal concepimento al ritiro. Inglese: _software product life cycle_.
* __ciclo di vita dello sviluppo (di un prodotto)__: Parte del ciclo di vita di un prodotto che riguarda il suo sviluppo. Inglese: _software development life cycle_.
* __ciclo PDCA (o ciclo di Deming)__: Schema iterativo di auto-miglioramento che consiste di quattro punti: Plan (individuare obiettivi di miglioramento), Do (eseguire ciò che si è pianificato), Check (verificare se ha funzionato) e Act (agire per correggersi). Inglese: _PDCA cycle_.
* __Classificazione dei requisiti__: Requisiti di progetto, processo e sistema-> funzionali, di performance, di qualità.
I requisiti devono essere verificabili; chi ne fissa uno deve avere idea di come accertarne il soddisfacimento.
>Requisiti formali prevedono test, dimostrazione formale e revisione;
>Requisiti prestazionali, una misurazione
>Requisiti qualitativi, una verifica ad hoc
>Requisiti dichiarativi, una revisione.
I requisiti hanno una diversa utilità strategica:
>Obbligatori: irrinunciabili per qualsiasi stakeholder;
>Desiderabili, non sono strettamente necessari ma hanno un valore aggiunto riconoscibile;
>Opzionali, sono relativamente utili oppure contrattabili in seguito.
* __CMMI__: Capability Maturity Model + Integration
Standard per il miglioramento e la valutazione della qualità di processo.
Definito su commessa del DoD al SEI di CMU. È un modello per la valutazione uniforme dei fornitori.
Capability: misura quant'è adeguato un processo per gli scopi per cui  è stato definito. Caratteristica di un processo misurato singolarmente; determina l'intorno del risultato (di efficienza ed efficacia) raggiungibile usando quel processo. Un processo che ne ha tanta è seguito da tutti in modo disciplinato, sistematico e quantificabile, in caso contrario dipenderebbe da chi lo attua, sarebbe definito e seguito in modo opportunistico, sarebbe difficicle prevederne l'esito, avanzamento e qualità.
Maturity: misura di quando è governato il sistema dei processi dell'azienda. Caratteristica d'un insieme di processi (quelli significativi rispondono alle esigenze di miglioramento continuo dell'organizzazione); risulta dall'effetto combinato delle capability dei processi coinvolti. 5 livelli: Optimizing, Qualitatively managed, Defined, Managed, Initial)
Model: insieme di requisiti via via più stringenti per valutare il percorso di miglioramento dei processi dell'azienda (utile per confrontarne di diverse).
Integration: architettura di integrazione delle diverse discipline (sys, HW, SW) e tipologie di attività delle aziende
* __CoCoMo (Constructive Cost Model)__: Modello per la stima dei costi di un progetto, in tempo/persona. Inglese: _CoCoMo_.
* __coerenza__: L'esser composto da parti che non sono in disaccordo tra loro, cioè non affermano cose che si contraddicano. Inglese: _consistency_.
* __coesione__: Grado di relazione tra parti associate di un sistema che concorrono agli stessi obiettivi. Proprietà interna di singole componenti: funzionalità "vicine" devono stare nella stessa componente (la modularità spinge a decomporre il grande in piccolo; aiuta a decomporre ed a porre un limite inferiore alla decomposizione).
Porta ad una maggiore manutenibilità e riusabilità, minore dipendenza fra i componenti ed una maggiore comprensione dell'architettura del sistema.
>Funzionale, quando parti specifiche concorrono al medesimo compito
>Sequenziale, quando alcune azioni sono vicine ad altre per ordine di esecuzione, così conviene metterle insieme
>Informativa, quando le parti agiscono sulla stessa unità d'informazione. Inglese: _cohesion_.
* __collaudo__: Durante la validazione, è un'attività supervisionata dal committente, come dimostrazione di conformità del prodotto sulla base di casi di prova specificati nel o implicati dal contratto.
È un'attività formale per il contratto.
Segue il rilascio del prodotto (con eventuale garanzia) e la fine della commessa (con eventuale manutenzione).
* __compito__: Parte di un'attività. Si può svolgere usando qualche tecnica: ricetta applicata agli strumenti disponibili Inglese: _task_.
* __complessità ciclomatica__: Misura quantitativa del numero di cammini linearmente indipendenti che il codice sorgente di un programma può percorrere. Inglese: _cyclomatic complexity_.
* __componente__: Insieme di unità funzionalmente coese; parte di un sistema. (In Java, rappresentabile da uno o più package.)
Integra più unità. Inglese: _component_.
* __configuration item (CI)__: Parte della configurazione di un software. Inglese: _configuration item_.
* __configurazione__: Di quali parti si compone un prodotto e il modo in cui esse stanno assieme.
Un prodotto sw è l'unione di parti distine unite insieme secondo regole rigorose. Le regole di configurazione vanno pianificate e la gestione di configurazione va automatizzata. Inglese: _configuration_.
* __Controllo di qualità__: Le attività del sistema qualità pianificate ed attuate al fine che il prodotto soddisfi i requisti attesi.
Modalità ed ambiti di controllo sono: 
-comprensione ed analisi del dominio;
-verifica (di attività di processo)
-validazione (di prodotto)
-quality assurance (preventiva invece che correttiva)
* __controllore della qualità (profilo professionale)__: Funzione aziendale (e non ruolo di progetto) che accerta la qualità dei prodotti. Inglese: _null_.
* __copertura del codice__: Percentuale di codice sorgente eseguito durante un caso di prova. Inglese: _code coverage_.
* __criticità__: Distanza troppo breve tra attività dipendenti. Inglese: _null_.
* __Customers__: Chi compra il prodotto
* __Definizione di Prodotto__: L'architettura di dettaglio porta alla definizione di prodotto
>Procede dall'architettura logica
>Consente lo sviluppo parallelo dei componenti terminali
>Consente di stimare costo e tempi di realizzazione
>Conforme alle qualità perseguite nell'architettura logica (alta coesione ed utilità=fan-in; bassa dipendenza=fan.out, comlessità ed accoppiamento).
>Decompone i componenti architetturali in moduli a grana più fine finchè ogni modulo ha dimensione, coesione, complessità ed accoppiamento appropriati per la codifica in parallelo>
>Deve fornire tutti i dettagli necesari alla codifica e verfica di ciascun modulo (la natura specifica di modulo è determinata dal linguaggio in uso).
* __design pattern__: Soluzione progettuale generale ad un problema ricorrente.
* __Development team__: Chi realizza il prodotto: il luogo di appartenenza dei software engineer
* __diagramma dei casi d'uso__: Grafo orientato che mostra gli attori, i casi d'uso e le relazioni tra essi: ogni nodo è un attore o un caso d'uso; ogni arco è una comunicazione tra un attore e un caso d'uso oppure una relazione (di estensione, inclusione o generalizzazione) tra due casi d'uso o tra due attori. Inglese: _use case diagram_.
* __diagramma di Gantt__: Diagramma che rappresenta la durata, la sequenzialità e il parallelismo delle attività di un progetto.
Si basa sulla dislocazione temporale delle attività, per rappresentarne la durata, la sequenzialità ed il parallelismo e confrontare stime e progressi. Inglese: _Gantt diagram_.
* __diagramma PERT (Project Evaluation and Review Technique)__: Rete che rappresenta le dipendenze temporali (e le criticità) tra attività di un progetto. Inglese: _PERT diagram_.
* __diagramma WBS (Work Breakdown Structure)__: Diagramma che decompone in modo gerarchico le attività di un progetto in sotto-attività (coese ma non necessariamente sequenziali ed univocamente identificate). Inglese: _WBS diagram_.
* __disciplinato__: Che segue le norme (anzi, la best practice). Inglese: _disciplined_.
* __documentazione__: Tutto ciò che descrive gli ingressi e le uscite delle attività di un progetto (riguardo al prodotto e processo). Documenti di sviluppo e di gestione del progetto. Inglese: _documentation_.
* __efficacia__: Conformità alle attese. Determinata dal grado di conformità del prodotto rispetto alle norme vigenti e agli obiettivi prefissati. Inglese: _effectiveness_.
* __efficienza__: Contenimento dei consumi per raggiungere un obiettivo. Inversamente proporzionale alla quantità di risorse impiegate nell’esecuzione delle attività richieste. Inglese: _efficiency_.
* ____: 
* __End users__: Chi usa il prodotto software
* __errore__: Stato del sistema che, se attivato, produce un malfunzionamento. Inglese: _error_.
* __Fan-in__: È l'indice di utilità di una componente. Rappresenta il numero dei moduli immediatamente superiori (parenti o boss).
Il designer dovrebbe mirare ad un lato fan-in ai livelli inferiori della gerarchia. Normalmente ci sono funzioni low-level che devono essere identificate e trasformate in moduli comuni per redurre la ridondanza del codice e aumentare la manutenibilità. Un alto fan-in aumenta la portabilità se tutta la gestione dell'I/O viene fatta da moduli comuni. Aumenta la ridondanza, semplifica la manutenzione. Moduli sviluppati per il fan-in devon'avere buona coesione, preferibilmente funzionale.
Ogni intergavvia per un modulo fan-in deve avere lo stesso numero e tipo di parametri.
* __Fan-out__: Rappresenta il numero di dipendenze di un modulo (il numero di moduli immediatamente subordinati).
Il fan-out ottimale è tra 5 e 9. 
Il designer dovrebbe mirare ad un fan-out moderato ai livelli alti della gerarchia, usando la fattorizzazione per risolvere problemi dovuti ad un'eccessivo fan.out, creando moduli intermedi per fattorizzare al di fuori i moduli con un'alta coesione ed un basso accoppiamento.
* __fase (di un ciclo di vita)__: Durata temporale (che non si ripete) entro uno stato del ciclo di vita e un altro. Inglese: _phase_.
* __framework__: Struttura di supporto su cui un software può essere organizzato e progettato.
Insieme integrato di componenti software prefabbricate.
Sono bottom-up perchè fatti di codice già sviluppato, ma anche top-down se impongono uno stile architetturale.
Utilissimi come base facilmente risuabile di diverse applicazioni entro un dato dominio.
* __Gestione di configurazione__: Ha come obiettivi quello di mettere in sicurezza le baseline che consolidano gli stati d'avanzamento del processo di sviluppo.
Le attività sono: l'identificazione di configurazione (quali configuration item compongono il prodotto->oguno ha un'identità unica) , il controllo di baseline (insieme di CI consolidato ad una specifica milestone; l'esistenza di baseline ben identificate permette riproducibilità, tracciabilità, analisi e confronto), la gestione delle modifiche ed il controllo di versione. 
 Inglese: _Configuration management_.
* __Gestione della qualità__: L'insieme dei processi che assicurano che prodotti e implementazioni di processi rispettino gli obiettivi di qualità (di un'organizzazione) e soddisfino gli stakeholder. Inglese: _quality management_.
* __Gestione delle modifiche__: Le richieste hanno origine da: utenti(difetti/mancanze), sviluppatori (idem), competizione (per avere valore aggiunto).
Le richieste vanno sottoposte ad un processo d'analisi, decisione, realizzazione e verifica.
Ogni richiesta va inoltrata in modo formale: change request. 
Va tenuta traccia d'ogni richiesta: issue tracking o ticketing, stato corrente + eventuale chiusura.
* __Gestione dei rischi__: Durante la pianificazione del progetto:
>Identificazione (nel progetto, prodotto, mercato)
>Analisi (prob. d'occorrenza, conseguenze)
>Pianificazione (valutare come evitarli/mitigarli, conseguenze?)
Durante il progetto:
>Controllo e mitigazione (attenzione continua del livello, tramite rilevazione d'indicatori; riconosciemnto, trattamento ad aggiornamento strategie).
Fonti: tecnologie, rapporti int.pers., org. lavoro, requisiti+rapporti stakeholders, tempi e costi
Verifica livello di rischio: 
>da effettuare regolarmente per determinare il livello corrente di rischio (non sempre è costante)
>valutare se gli effetti dei rischi possono essere cambiati (non sono sempre costati nel tempo)
>riportare sempre ogni rischio serio all'attenzione del mgmt Inglese: _Risk management_.
* __glossario__: Elenco dei significati dei termini più rilevanti di un documento. Inglese: _glossary_.
* __guasto__: Causa di un errore. Inglese: _fault_.
* __IEEE 830-1998__: Reccomended Practice for Software Requirements Specifications.
La specifica dei requisiti dev'avere 8 qualità essenziali:
1. Privia d'ambiguità (UNAMBIGUOS);
2. Corretta
3. Completa
4. Verificabile
5. Consistente
6. Modificabile
7. Tracciabile
8. Ordinata per rilevanza
* __impegno__: null Inglese: _commitment_.
* __Incapsulazione (information hiding)__: Le componenti sono "black box" ed i clienti ne conoscono solo l'interfaccia; la specifica nasconde gli algoritmi e le strutture dati usate al loro interno. I benefici sono che l'esterno non può fare assunzioni sull'interno, cresce la manutenibilità, diminuendo le dipendenze aumentano le opportunità di riuso. Inglese: _Information hiding_.
* __incarico__: null Inglese: _assignment_.
* __indice analitico__: Elenco ordinato delle corrispondenze tra particolari termini importanti di un documento e la loro ubicazione in esso. Inglese: _index_.
* __indice generale__: Elenco delle parti di un documento. Inglese: _table of contents_.
* __infrastruttura (di un progetto)__: Tutte le risorse hardware e software del progetto. Inglese: _null_.
* __ingegneria__: L'applicazione di princìpi scientifici e matematici per scopi pratici. Inglese: _engineering_.
* __ingegneria del software__: Applicazione di un approccio sistematico, disciplinato e quantificabile allo sviluppo, al funzionamento e al mantenimento del software. Inglese: _software engineering_.
* __inspection__: Tecnica di analisi statica che consiste nell'eseguire una lettura mirata, alla ricerca di errori noti.
Punta a rilevare la presenza di difetti, svolta da verificatori distinti e separati dai programmatori. Si focalizza sulla ricerca di presupposti (error guessing).
Viene svolta in 4 fasi: la pianificazione, la definizione della lista di controllo, la lettura vera e propria e la correzione dei difetti; in ogni fase la documentazione serve a tenere traccia delle attività svolte.
* __integrazione continua__: Pratica di sviluppo in cui i membri di un progetto integrano il loro lavoro frequentemente (quotidianamente) in modo automatizzato. Inglese: _continuous integration_.
* __ISO 9000__: Famiglia di standard internazionali per la gestione della qualità nei sistemi produttivi.
* __ISO/IEC 12207__: Standard internazionale per il ciclo di vita del software.
Modello ad alto livello.
 - identifica i processi dello sviluppo SW; 
 - struttura modulare che richiede specializzazione
 - specifica le responsabilità sui processi
 - identifica i prodotti dei processi
* __ISO/IEC 14598__: Standard internazionale che fornisce un processo per la valutazione della qualità del software; integra ISO/IEC 9216.
Definizione di metriche per la valutazione delle caratteristiche rilevanti.
Misurazione della qualità software.
Misurazione quantitativa: l'uso di una metrica per assegnare un valore (numero o categoria) su una scala predefinita.
Il processo attraverso cui, secondo regole definite, simboli o numeri sono assegnate ad attributi di una entità.
* __ISO/IEC 15504:1998__: Standard internazionale per il miglioramento e la valutazione della qualità di processo.
Nato per armonizzare SPY con ISO/IEC 12207 ed ISO 9001. Inglese: _ISO/IEC 15504_.
* __ISO/IEC 15939__: Standard internazionale per la misurazione del software.
* __ISO/IEC 25000__: Famiglia di standard internazionali che vogliono fornire un framework per la valutazione della qualità del software; ha inglobato ISO/IEC 9126 e ISO/IEC 14598.
SQuaRE: Software product Requirements And Evaluation:
* __ISO/IEC 9126__: Standard internazionale che fornisce un modello per la qualità del software.
Propone un approccio alla qualità in modo che le aziende possano migliorare l'organizzazione ed i processi, e come conseguenza concreta, il prodotto sviluppato.
Catalogazione sistematica delle caratteristiche rilevanti.
>Visione esterna: relativa all'esecuzione del prodotto (product requirements)
>Visone interna: relativa al prodotto non in esecuzione (product-component requirements)
>Visione in uso: relativa alla percezione dell'utente/operatore (customer requirements).
Il modello di qualità stabilito nella prima parte dello standard,  è classificato da sei caratteristiche generali (funzionalità, affidabilità, efficienza, usabilità, manutenibilità, portabilità).
La funzionalità è un "requisito funzionale" a differenza delle ultime cinque caratteristiche chiamate invece " requisiti non funzionali" o "requisiti di qualità".
* __legge di Parkinson__: Work expands to fill the time available. Inglese: _Parkinson's law_.
* __malfunzionamento__: Esecuzione di un software difforme dalle attese. Inglese: _failure_.
* __Manuale della qualità__: Documento che definisce il sistema di gestione della qualità di un'organizzazione.
È una visione ad alto livello, che si integra con le procedure aziendali, fissa gli obiettivi di qualità e le strategie attuative (esprime la politica aziendale rispetto alla qualità); specifica le modalità per la sua evoluzione.
* __Manuale Utente__: Adatto alle caratteristiche dell'utente e dell'interfaccia utente.
Si caratterizza per l'evoluzione e per la forma: nasce presto e cresce con il prodotto, può essere un documento cartaceo tradizionale/un ipertesto/essere on-line con il prodotto/un aiuto contestuale.
Al suo interno si predilige la forma attiva alla passiva, la correttezza grammaticale e tipografica, frasi brevi ed introno ad un solo fatto, le liste alle frasi, dei paragrafi brevi e fatti di poche frasi, uno stile non verboso ed una terminologia precisa, l'uso di più punti di vista per descrizioni complesse ed infine sezioni e sottosezioni titolate. Inglese: _User manual_.
* __manutenzione__: Correttiva: per correggere difetti eventualmente rilevati
Adattativa: per adattare il sistema alla variazione dei requisiti;
Evolutiva: per aggiungere funzionalità al sistema Inglese: _maintenance, upkeep_.
* __marcatore__: Istruzione che un programma deve eseguire per trattare nel modo specificato dall'utente una porzione di testo specificata. Inglese: _mark-up_.
* __Metodi agili__: > 4 principi fondamentali:
1.Individuals and interactions over processes and tools (L’eccessiva rigidità ostacola l’emergere del valore)
2. Working sofware over comprehensive documentation 
3. Customer collaboration over contract negotiation
4. Responding to change over following a plan
L'idea di base è il concetto di "user story" (compito significativo che l'utente vuole svolgere con il sw richiesto; definita da: documento di descrizione, minuta di converszioni con il cliente per fissare la comprensione comune, strategia da utilizzare per confermare che il sw soddisfi gli obiettivi).
Scrum (caos organizzato), Kanban (just-in-time), Scrumban
 Inglese: _Agile methods_.
* __metodi di lettura__: Svolti durante l'analisi statica durante le fasi di verifica e validazione. 
Inspection e walkthrough.
Sono metodi pratici, basati sulla lettura della documentazione sul prodotto. La loro efficacia dipende dall'esperienza dei verificatori (nell'organizzare le attività di verifica e nel documentare le attività svolte ed i risultati ottenuti).
Sono modalità relativamente complementari!
Le affinità sono: hanno controlli basati su desk check, hanno programmatori e verificatori su fronti opposti, compilano documentazione formale.
Differenze: l'inspection è basato su errori presupposti, ed è più rapido, il walkthough richiede maggiore attenzione però è più collaborativo.
* __metodo di lavoro__: Metodo di lavoro. Inglese: _way of working_.
* __metrica__: L'interpretazione di un sistema di unità di misura. Inglese: _metric_.
* __Metrica software__: Ogni tipo di misura riferita ad un sistema, processo o documento  software.
Es. Programma (SLOC), testo (Gunning fog index). Effort (person-days).
Permetta al prodotto ed al processo d'essere quantificati.
Può essere usato per predire attributi del prodotto oppure per controllare il processo software.
Le matriche di prodotto possono esere usa per fare predizioni generali o per identificare componenti anomale. Inglese: _Software metrics_.
* __Metriche: asserzioni__: La proprietà o l'attributo del software può essere misurato.
Esiste una relazione tra quanto possiamo misurare e quanto vogliamo sapere (conosciamo solo come misurare attributi interni, ma spesso siamo interessati agli attributi esterni).
La relazione è stata formalizzata e validata.
Può essere difficile collegare quanto può essere misurato, agli attributi esterni di qualità che si desidera. Inglese: _Metrics assumptions_.
* __milestone__: Punto nel tempo associato ad un valore strategico.
Devono essere: specifiche per obiettivi, delimitate per ampiezza ed ambizioni, incrementali per contenuti, coerenti con e rilevante per la strategia di prodotto, misurabili epr quantità di impegno necessario, traducibili in compiti assegnabili, raggiungibili, puntuali rispetto alle esigenze di calendario e dimostrabili agli stakeholders
* __misura__: Risultato di una misurazione. Inglese: _measurement_.
* __misurazione quantitativa__: L'uso di una metrica per assegnare un valore su una scala predefinita. Inglese: _quantitative measurement_.
* __Modelli di ciclo di vita__: Descrivono come i processi si relazionano tra loro nel tempo rispetto agli stati di ciclo di vita.
Base concettuale intorno alla quale pianificare, organizzare, eseguire e controllare lo svolgimento delle attività necessarie. Inglese: _Life cycle models_.
* __modello__: Astrazione della realtà. Inglese: _model_.
* __Modello a componenti__: Molto di quello che serve è già stato fatto & molto di quello che faremo potrà ancora servire.
Massima attenzione al riuso sistematico di componenti preesistenti/off-the-shelf.
Analisi requisiti -> Analisi componenti -> Adattamento requisiti -> Progettazione con riuso -> Sviluppo ed integrazione -> Validazione di sistema Inglese: _Model at component_.
* __Modello evolutivo__: Aiuta a riposndere a bisogni non preventivabili inizialmente; può richiedere rilascio e mantenimento di più versioni esterne in parallelo; comporta il riattraversamento di più fasi del ciclo di vita.
1.Analisi preliminare (identificare req. di massima; definire architattura di massima; pianificare i passi d'analisi e realizzazione evolutiva)
2. Analisi&realizzazione d'una evoluzione (come raffinamento + estensione dell'analisi o per progettazione, codifica, prove ed integrazione)
3. Rilascio di prototipi, poi accettazione finale. Inglese: _Evolutive model_.
* __Modello incrementale / incremento__: Procedere per incrementi significa aggiungere a un impianto base.
Possono produrre "valore" ad ogni incremento; ogni incremento riduce il rischio di fallimento; funzionalità essenziali sviluppate nei primi incrementi.
Prevede rilasci multipli & successivi: ognuno realizza un incremento di funzionalità. Requisiti utente classificati e trattati in base alla loro importanza strategica (primi rilasci->req. + importanti; requisiti strategici stabiliti all'inizio) (req. principali identificati e fissati; architettura del sistema identificata e fissata completamente).
Analisi e progettazione architetturale non ripetute. Realizzazione incrementale (prj dettaglio, codifica e prove; prima req. essenziale e poi i desiderabili; integrazione->collaudo->rilascio) Inglese: _Incremental model / Increment_.
* __Modello iterativo / iterazione__: Procedere per iterazioni significa operare raffinamenti o rivisitazioni.
Applicabili a qualunque modello di ciclo di vita; consentono maggior capacità d'adattamento; comportano il rischio di non convergenza.
Soluzione generale:
 1.decomporre la realizzazione del sys
 2.identificare&trattare prima le componenti più critiche
 3.limitare superiormente il numero d'iterazioni.
Rischi: ogni iterazione comporta un ritorno all'indietro, nella direzione opporsta all'avanzamento del tempo). Inglese: _Iterative model / iteration_.
* __Modello sequenziale (a cascata)__: Centrato sull'idea di processi ripetibili; Successione di fasi rigidamente sequenziali: non ammette ritorni a fasi precedenti ed eventi eccezionali fanno ripartire dall'inizio. I prodotti sono principamente documenti, fino ad includere il SW (Document driven development). Ogni stato di vita ha pre- e post-condizioni.
Fasi distinte e non sovrapposte nel tempo. Sviluppo di sistemi complessi sul piano organizzativo (iterazioni troppo costose per mitigare i rischi con approssimazioni successive).
Fase definita in termini d'attività previste & prodotti attesi, contenuti e struttura documenti, responsabilità e ruoli coinvolti + scadenze consegne docs.
Fasi = durate temporali con dipendenze causali tra loro.
Difetti: eccessivamente rigido (stretta sequenzialità + non modifiche in corso d'op. + molta manutenzione + molto burocratico e poco realistico).
Correttivi: 1. Prototipazione (usa&getta); 2. Cascata con ritorni Inglese: _Waterfall model_.
* __Modello a spirale__: Miglior controllo dei rischi di progetto; cicli interni rapidi e ripetuti (dedicati ad analisi e sviluppi prototipali), cicli esterni che aderiscono ad un qualunque altro modello standard di ciclo di vita.
Grande attenzione sugli aspetti gestionali (pianificazione delle fasi, analisi dei rischi (risk-driven).
1.Definizione degli obiettivi (requisiti, rischi, strategia di gestione)
2.Analisi dei rischi (studio delle conseguenze, valutazione alternative)
3.Sviluppo e validazione (realizzazione del prodotto)
4.Pianificazione (decisione circa il proseguimento, pianificazione del proseguimento) Inglese: _Spiral model_.
* __modulo__: L'elemento atomico dell'architettura di un software; tipicamente una classe o un interfaccia.
Parte dell'unità. Inglese: _module_.
* __Norme di progetto__: Linee guida per le attività di sviluppo: strumento operativo di complemento alle procedure.
Contenuti: organizzazione ed uso delle risorse di sviluppo, convenzioni sull'uso degli strumenti di sviluppo, organizzazione delle comunicazioni e della cooperazione, norme di codifica e gestione dei cambiamenti
* __organizzazione__: Aggregato di persone [?] che agiscono in modo sistematico, disciplinato e quantificabile; contrario di caos. Inglese: _organization_.
* __People__: Business management; Project management; Development team; Customers; End users
* __pianificazione__: Organizzare e controllare tempo, risorse e risultati. Inglese: _planning_.
* __Pianificazione di progetto__: >Definizione delle attività
  [pianificarne lo svolgimento + controllarne l'attuzione; avere una base su cui gestire l'allocazione delle risorse; stimare e controllare scadenze e costi]
> Strumenti di pianificazione: diagr. Gantt, Programme Evaluation and Review Technique (PERT), Work Breakdown Structure (WBS) Inglese: _Project pianification_.
* __Pianificazione di qualità__: Le attività del sistema qualità mirate a fissare gli obiettivi di qualità, i processi e le risorse necessarie per conseguirli.
Vedi: piano di qualità
* __Piano di progetto__: Fissa: risorse disponibili, suddivisione attività, calendario attività.
Obiettivi: org. att. in modo da produrre ris. utili per valutare con efficacia il piano d'avanzamento del lavoro + fissare milestone come punti critici/finali delle attività.
Struttura: Introduzione, org. prj, analisi dei rischi, risorse necessarie e disponibili (hw, sw), suddivisione del lavoro (work breakdown structure). calendario delle attività (prj schedule), meccanismi di controllo e rendicontazione)
* __Piano di progetto__: Fissa: risorse disponibili, suddivisione attività, calendario attività.
Obiettivi: org. att. in modo da produrre ris. utili per valutare con efficacia il piano d'avanzamento del lavoro + fissare milestone come punti critici/finali delle attività.
Struttura: Introduzione, org. prj, analisi dei rischi, risorse necessarie e disponibili (hw, sw), suddivisione del lavoro (work breakdown structure). calendario delle attività (prj schedule), meccanismi di controllo e rendicontazione)
* __Piano di qualità__: Fissa le politiche aziendali per il perseguimento della qualità (visione orizzontale: trasversale sull'intera organizzazione).
Determina gli obiettivi di qualità del singolo progetto (visione verticale: specificatamente per un prodotto/servizio).
Assume l'uso di opportuni strumenti e modalità di controllo.

Documento che definisce gli elementi del SGQ e le risorse che devono essere applicate in uno specifico caso (prodotto, processo, progetto).
Operativamente, concretizza il Manuale della Qualità a livello di progetto (sotto specifici vincoli di tempo e risorse); può avere valenza contrattuale.
In pratica si deve accertare la disponbilitià dell'analisi dei requisiti, di architettura e soluzioni tecniche, la pianificazione delle verifiche e dei risultati delle verifiche; inoltre della conformità ai modelli fissati nelle norme, la tracciabilità tra soluzioni e requisiti, ed assicurare la buona pianificazione delle attività (per uso di risorse).
* __Piano di qualifica__: Definizione delle strategie di verifica; scelta dei metodi, tecniche e procedure da usare per la validazione
* __prassi__: Modo di fare. Inglese: _practice_.
* __Processi di Sviluppo (ISO 12207)__: Documentazione;
Accertamento della qualità;
Gestione delle versioni e delle configurazioni;
Verifica;
Qualifica;
Validazione;
Revisioni congiunte con il cliente;
Verifiche ispettive interne;
Risoluzione dei problemi. Inglese: _Development processes_.
* __Processi organizzativi (ISO 12207)__: Gestione dei processi;
Gestione delle infrastrutture;
Miglioramento del processo;
Formazione del personale.
* __Processi Primari (ISO 12207)__: Acquisizione (gestione dei propri sotto-fornitori);
Fornitura (gestione rapporti con cliente); 
Sviluppo;
Gestione Operativa (utilizzo);
Manutenzione (correttiva/adattativa/evolutiva) Inglese: _Primary processes_.
* __processo (ingegneristico)__: Insieme di attività correlate e coese che trasformano ingressi in uscite, consumando risorse nel farlo.
Il quadro metodologico, normativo e strategico delle attività di progetto (insieme delle attività raggruppate per obiettivi) per alimentare svariati modelli di ciclo di vita del SW. Inglese: _process_.
* __processo definito__: Specializzazione del processo standard necessaria per adattarlo ad esigenze specifiche di progetto.
* __processo di progetto__: Istanza di un processo definito che utilizza risorse aziendali per raggiungere obiettivi prefissati (processo calato nella realtà aziendale).
* __processo software__: Processo che porta ad un prodotto software. Inglese: _software process_.
* __prodotto software__: Su commessa: forma, contenuto e funzione fissate dal cliente;
Pacchetto: forma, contenuto e funzione idonee alla replicazione;
Componente: forma, contenuto e funzione adatte alla composizione;
Servizio: forma, contenuto e funzione fissate dal problema. Inglese: _software product_.
* __produttività__: Rapporto tra valore e costo. Inglese: _productivity_.
* __profilo professionale__: Requisiti per l'assunzione di un ruolo in un progetto; insieme di competenze (tecnologiche e metodologiche) e un'esperienza (espressa in anni e partecipazione a progetti) che fanno da requisiti per l'assunzione di un ruolo in un progetto. Inglese: _professional profile_.
* __progettazione__: Definizione dell'architettura, delle componenti, delle interfacce e delle altre caratteristiche di un sistema o componente.
Precede la produzione; costruizione a priori, perseguendo la correttezza per costruzione (non per correzione).
->Fare una cosa che è garantito abbia le proprietà dichiarate.
Scopo:
>soddisfare i requisiti con un sistema di qualità;
>definire l'architettura logica del prodotto;
>dominare la complessità del prodotto (divide-et-impera, facilita la comprensione ed assegnare la codifica ad un solo individuo)
>organizzare e ripartire le responsabilità di realizzazione
>produrre in economia (efficienza)
>garantire la qualità (efficacia).
Risponde alla domanda: "come dare la giusta risposta (al problema)?"
Descrive una soluzione soddisfacente per tutti gli stakeholders; approccio sintetico, il codice non esiste ancora; produce l'architettura scelta ed i suoi modelli logici. Inglese: _design_.
* __progettazione architetturale__: Definizione delle componenti e di come esse sono organizzate in un sistema. Inglese: _architectural design_.
* __progettazione di dettaglio__: Definizione del comportamento delle componenti di un sistema, con un livello di dettaglio tale per cui le componenti possano essere implementate.
Definizione delle unità realizzative (moduli), specifica delle unità come insieme di moduli (definizione delle caratteristiche significative; fatta dal nulla o tramite specializazione di componenti esistenti).
Ha come obiettici di:
>Assegnare unità a componenti
>Produrre la documentazione necessaria
>Definire gli strumenti per le prove di unità Inglese: _detailed design_.
* __progettista (profilo professionale)__: Chi sintetizza una soluzione a partire dalle specifiche di un problema già analizzato. Inglese: _designer_.
* __progetto__: Nasce da una richiesta (e/o pagamento) che diventa poi un impegno se accettato. Porta dei vincoli : di costo, di risorse, di tempo. Spesso insieme di attività da svolgere in modo collaborativo.
Pianificazione; Analisi dei requisiti; Progettazione; Realizzazione; Verifica e validazione; Manutenzione. Inglese: _project_.
* __programmatore (profilo professionale)__: Chi implementa una parte della soluzione dei progettisti. Inglese: _programmer_.
* __Project management__: Chi gestisce le risorse di progetto e riferisce all’organizzazione e al
cliente
* __protocollo__: Accordo di interfacce. Inglese: _protocol_.
* __Prototipo__: Serve per provare e scegliere soluzioni.
Può essere “usa e getta” (nel caso delle iterazioni) oppure fornire stati
di incremento (baseline). Inglese: _Prototype_.
* __qualifica__: Verifica e validazione ('V&V'), cioè quei processi che assicurano la qualità di un prodotto durante il suo ciclo di vita. Inglese: _null_.
* __quality assurance__: Insieme di attività che valutano i processi con i quali un prodotto viene sviluppato.
Serve a raccogliere tempestivamente evidenza oggettiva e di qualità, a fronte di specifiche metriche ed obiettivi definiti, per dare evidenza oggettiva, per controllo (interno) ed accertamento (esterno).
Usa ISO/IEC 9126 come riferimento; la qualità è valutata a posteriori.
* __Qualità__: L'insieme delle caratteristiche di un'entità che ne determinano la capacità di soddisfare esigenze espresse e implicite.
Aree nelle quali interviene il sistema qualità:
-Qualità intrinseca (conformità ai requisiti ed idoneità nell'uso)
-Qualità relativa (soddisfazione del cliente)
-qualità quantitativa (misura del livello di qualità per confronto) Inglese: _quality_.
* __Qualità di processo__: Esigenze:
>organizzazione e diffusione interna sistematica
>Identificazione di prodotti intermedi e di momenti di verifica
>Riproducibilità dei risultati
>Quality assurance (proattiva, preventiva)
Obietivi:
>Definire il processo, per controllarlo e renderlo più facilmente controllabile e raccontarlo in maniera più convincente
>Controllare il processo per migliorarlo (efficacia: prodotti conformi alle attese; efficienza: minori costi a pari qualità di prodotto; esperienza: apprenderne, anche da altri)
>Usare buoni strumenti di valutazione.
* __quantificabile__: Esprimibile in modo quantitativo. Inglese: _quantifiable_.
* __raccomandazione__: Norma di progetto suggerita, non sottoposta a verifica. Inglese: _recommendation_.
* __ramo (di un repository)__: Insieme di versioni di file sorgente in evoluzione. Inglese: _branch_.
* __regola__: Norma di progetto sottoposta a verifica. Inglese: _rule_.
* __rendimento decrescente, legge del__: Man mano che si aumenta lo sforzo, il rendimento cresce inizialmente ma poi diminuisce sempre più. Inglese: _diminishing returns_.
* __repository__: Base di dati centralizzata nella quale risiedono, individualmente, tutti i CI di ogni baseline nella loro storia completa.
* __requisito__: Bisogno da soddisfare o vincolo da rispettare.
Secondo IEEE:
1. Condizione (capability) necessaria ad un utente per risolvere un problema o raggiungere un obiettivo (visione dal lato del bisogno)
2. Condizione (capability) che dev'essere soddisfatta o posseduta da un sistema per adempiere ad un obbligo (visione lato soluzione)
3. Descrizione documentata di una condizione (capability) come in 1 o 2. Inglese: _requirement_.
* __requisito di processo__: Vincolo sullo sviluppo del prodotto. Inglese: _null_.
* __requisito di prodotto__: Bisogno o vincolo sul prodotto da sviluppare. Inglese: _null_.
* __requisito di sistema__: Definizione formale e dettagliata di una funzione del sistema. Inglese: _system requirement_.
* __requisito funzionale__: (di un prodotto software) servizio che il prodotto deve fornire. Inglese: _functional requirement_.
* __requisito non funzionale__: (di un prodotto software) vincolo su uno o più servizi che il prodotto fornisce. Inglese: _non-functional requirement_.
* __requisito utente__: Richiesta generale, ad alto livello. Inglese: _user requirement_.
* __responsabile di progetto (profilo professionale)__: Chi pianifica il progetto, assegna le persone ai ruoli giusti e rappresenta il progetto presso il fornitore e il committente. Inglese: _project manager_.
* __rete__: Grafo orientato. Inglese: _network_.
* __revisione esterna__: Ispezione ufficiale di un prodotto condotta da un'organizzazione indipendente da chi ha sviluppato il prodotto. Inglese: _audit_.
* __revisione interna__: Ispezione di un prodotto interna all'organizzazione che lo sviluppa. Inglese: _joint review_.
* __rischio__: Opposto di opportunità. Inglese: _risk_.
* __ritiro (di un prodotto)__: Momento in cui il prodotto cessa di essere seguito dai suoi creatori. Inglese: _retirement_.
* __Riuso__: Occasionale (opportunistico) – «copia-incolla» a basso costo e scarso
impatto.
Sistematico (per progetto, per prodotto, per azienda) a maggior costo
ma maggior impatto.
Mira a capitalizzare sottoinsiemi già esistenti, impiegandoli più volte per più prodotti, ottenendo un minor costo realizzativo e di verifica. Ma progettare per riuso è più difficile, visto che si deve anticipare i bisogni futuri; in più non è immediato, visto che si devono minimizzare le modifiche alle componenti riusate per non perderne il valore.
Costituisce -nel breve periodo- un puro costo. Diventa risparmio nel medio termine (è quindi un investimento). Inglese: _Reuse_.
* __Ruolo__: Funzione aziendale assegnata a progetto; identifica capacità e compiti.
Es. Sviluppo -> responsabilità tecnica e realizzativa. Inglese: _role_.
* __scenario__: Sequenza di passi che descrive un esempio di interazione con un sistema.
* __SEMAT__: SEMAT (Software Engineering Method and Theory) drives a process to refound software engineering based on a solid theory, proven principles and best practices.
Is a community of people, companies and some universities, supporting an initiative to create a common ground, a kernel or a foundation for software engineering.
* __Servizio (amministrazione di progetto)__: Mezzo per aiutare l'utente a raggiungere i suoi obiettivi riducendo costi e rischi. Inglese: _Service_.
* __SGQ__: Sistema di Gestione Qualità. Ha come responsabilità di garantire la qualità in maniera trasversale a settori e reparti.
Riferisce direttamente alla Direzione
* __sistema__: Insieme di componenti organizzati per compiere una o più funzioni. Inglese: _system_.
* __Sistema qualità__: La struttura organizzativa, le responsabilità, le procedure, i procedimenti e le risorse messe in atto per il perseguimento della qualità.
Ambiti:
-pianificazione (definizione di politica ed obiettivi)
-controllo
-miglioramento continuo
* __sistematico__: Che abbraccia un metodo. Inglese: _systematic_.
* __slack time__: Quantità di tempo tra la data minima a partire da cui un evento può accadere e la data massima oltre la quale esso ritarda gli eventi successivi.
* __Software engineer__: Realizza parte di un sistema complesso con la consapevolezza che potrà essere usato, completato e modificato da altri. Deve guardare e comprendere il quadro generale nel quale il sistema cui contribuisce si colloca.
Deve operare compromessi intelligenti e lungimiranti tra visioni e spinte contrapposte.
* __sommario__: Breve riassunto del contenuto di un documento. Inglese: _abstract_.
* __Specifica Tecnica__: È prodotta a valle dell'Analisi dei Requisiti; fissa linee e strategie di realizzazione, avvia la fase realizzativa, ma non fissa i dettagli implementativi.
>Mostra ciò che deve fare il sistema. 
>Organizzata gerarcicamente attraverso più livelli di decomposizione (o tramite generalizzazione, specializzazione, aggregazione)
>Stabilisce le relazioni tra cause ed effetti
>Porta una visione d'insieme della soluzione proposta
>Per ogni componente:
 - funzione svolta 
 - tipo dati in ingresso
 - tipo dati in uscita
 - risorse logiche e fisiche necessarie al funzionamento
* __SPICE__: Software Process Improvement Capability dEtermination, vedi ISO/IEC 15504.
* __SPY__: Software Process Assessment and Improvement, standard per il miglioramento e la valutazione della qualità di processo.
COnsite nella valutazione oggettiva dei processi di una organizzazione, per darne un giudizio di maturità ed individuare azioni migliorative.
* __SQL (Structured Query Language__: Linguaggio di programmazione dichiarativo basato sull'algebra relazionale che serve a creare, manipolare e interrogare basi di dati relazionali. Inglese: _SQL_.
* __stakeholder__: Persona a vario titolo coinvolta nel ciclo di vita di un software che ha influenza sul prodotto o sul processo.
* __standard di processo__: Riferimento di base generico usato come stile comune per lo svolgimento delle funzioni aziendali, pensato per una collettività di casi afferenti ad un certo dominio applicativo. Inglese: _process standard_.
* __Stati di processo per SEMAT__: >Conceived (committente identificato; gli stakeholders vedono sufficienti opportunità per il progetto)
>Bounded (i macro bisogni sono chiari, i meccanismi di gestione dei requisiti sono fissati)
>Coherent (requisiti classificati e quelli essenziali/obbligatori sono chiari e ben definiti)
>Acceptable (requisiti fissati definiscono un sys sufficiente agli stakeholders)
>Addressed (il prodotto soddisfa i principali requisiti al punto da poter meritare rilascio ed uso)
>Fullfilled (il prodotto soddifa abbastanza requisiti da meritare la piena approvazione degli stakeholders).

* __Strumenti di valutazione della qualità__: SPY, CMM->CMMI, Spice ed ISO/IEC 15504
* __strumento__: Insieme di concetti e di metodi, con delle tecnologie di supporto. Inglese: _tool_.
* __Studio di fattibilità__: Valuta rischi, costi, benefici, nell'ottica del cliente e del fornitore; decidere se procedere (obiettivo=restare entro un costo massimo prefissato); gatto con le conoscenze immediatamente disponibili, non richiede ricerche impegnative.
Fattibilità tecnico-organizzativa (strumenti per la realiz., sol. alg. e arch., piattaforme idonee per l'esecuzione).
Rapporto costi-benefici; individuazione dei rischi (complessità, incertezze).
Valutazione scadenze temporali; valutazione delle alternative (scelte architetturali, strategie relizzative:make-or-buy, strategie operative).
* __tecnica__: Ricetta applicata agli strumenti disponibili; modo con cui si usa uno strumento. Inglese: _technique_.
* __tecnologia__: Strumento sul quale si opera. Inglese: _technology_.
* __test__: Attività di analisi dinamica che osserva i risultati dell'esecuzione di un sistema (o parte di esso) sotto determinate condizioni.
* __test di integrazione__: Test che verifica la correttezza dell'integrazione di un insieme di unità in una componente del sistema in esame.
Fatto per la costruzione e la verifica incrementale del sistema, su componenti sviluppate in parallelo e verificate incrementalmente. In cond. ottimanli, l'inegrazione è priva di problemi. 
Rileva: errori residui nella realizzazione dei componenti, la modifica delle interfacce o cambiamenti nei requisiti, riuso di componenti dal comportamento oscuro o inadatto, l'integrazione con altre applicazioni non ben conosciute. Inglese: _integration test_.
* __test di sistema__: Test che verifica la copertura dei requisiti da parte del sistema in esame.
Durante la validazione è un'attività interna del fornitore (per accertare la copertura dei requisiti sw). Inglese: _system test_.
* __test di unità__: Test che verifica la correttezza di una singola unità del sistema in esame.
È un'attività di analisi dinamica fatta con il supporto di attività dell'analisi statica, ha lo scopo di determinare limiti di iterazioni, flusso del programma oppure valori di variabili. Viene svolta con il massimo grado di parallelismo.
La responsabilità è del singolo programmatore per le unità più semplici, altrimenti di un verificatore indipendente, meglio un automa.
L'obiettivo è di verificare la correttezza del codice "as implemented". Inglese: _unit test_.
* __test di validazione__: Test che verifica il soddisfacimento del capitolato d'appalto da parte del sistema in esame. Inglese: _validation test_.
* __test funzionale__: Test di unità che analizza la logica interna del codice di un'unità. Inglese: _functional test_.
* __test di regressione__: È l'insieme di test (test di unità e di integrazione) necessari ad accertare che la modifica di una parte P di S non causi errori in P o nelle altre parti di S che hanno relazioni con P.
->ripetizione di test già previsti ed effettuati per ogni parte coinvolta.
Modifiche effettuate per aggiunta, correzione o rimozione non devono pregiudicare le funzionalità già verificate (rischio aumenta all'aumentare dell'accoppiamento ed al diminuire dell'incapsulazione)
* __test strutturale__: Test di unità che analizza soltanto il comportamento dell'unità e non la sua logica interna. Inglese: _structural test_.
* __Tracciamento dei requisiti__: >Fissa la relazione tra i prodotti del processo di sviluppo, usando matrici di tracciabilità.
>In avanti (forward) -> completezza. Ciascun ingresso ad una fase deve essere messo in relazione con una specifica uscita da quella fase. Fatta con le matrici di tracciabilità.
>All'indietro (backward) -> necessità. Ciascuna uscita dalla fase dev'essere messa in relazione con uno specifico ingresso a quella fase.
* __UML (Unified Modelling Language)__: Famiglia di notazioni grafiche che si basano su un singolo meta-modello e servono a supportare la descrizione e il progetto dei sistemi software. Inglese: _UML_.
* __unità__: Insieme coeso di moduli, appaltabili in realizzazione a un singolo programmatore; non ha sempre un corrispondente diretto in un linguaggio di programmazione. È anche la più piccola quantità di software che conviene verificare da sola; tipicamente è prodotta da un singolo programmatore.
La sua natura specifica dipende dal lignuaggio di programmazione in uso.
Non linee di codice ma entità di strutturazione (procedura, classe, package). Inglese: _unit_.
* __validazione__: S'occupa di accertare che il prodotto realizzato corrisponda alle attese.
La garanzia che un prodotto soddisfi i requisiti da cui è nato.
È rivolta ai prodotti finali. Inglese: _validation_.
* __validazione del software__: Conferma tramite esami e fornendo evidenze obiettive che le specifiche del sofware sono conformi ai bisogni degli utenti e degli usi che ne sono intesi, e che i requisiti particolari implementati tramite software sono consistentemente soddisfatti
* __valutazione__: Verifica quantificata. Inglese: _evaluation_.
* __verifica__: Valutare se un prodotto soddisfa requisiti, regole o altre condizioni necessarie.
Accertare che l'esecuzione delle attività di processo non abbia introdotto errori. Rivolta ai processi: viene svolta per accertare il rispetto di regole, convezioni o procedure.
Si occupa di accertare che l'esecuzione delle attività di processi svolti nella fase in esame non abbia introdotto errori nel prodotto Inglese: _verification_.
* __Verifica dei requisiti__: Viene eseguita su un documento organizzato, tramite Walkthrough od Ispezione (lettura mirata e strutturata).
Viene creata una matrice delle dipendenze al fine del tracciamento.
>La chiarezza espressiva è importante: l'uso naturale del linguaggio rende difficile coniugare chiarezza con facilità di lettura.
>La chiarezza strutturale è utile a separare requisiti funzionali e non funzionali, occorre una classificazione precisa, uniforme ed accurata.
>Atomicità ed aggregazione significa avere requisiti elementari e correlazioni chiare ed esplicite.

* __verifica del software__: Fornisce evidenza obiettica che le le usciete del design di una particolare fase del ciclo di vita del software soddisfano tutti gli specifici requisiti di quella fase.
La verifica del software guarda alla consistenza, completezza e correttezza del software e della sua documentazione di supporto, durante la sua produzione, fornisce inoltre supporto a poter dire -
di conseguenza - che il software è stato validaato.
* __verificatore (profilo professionale)__: Chi verifica il lavoro dei programmatori. Inglese: _verifier_.
* __versione (di un CI)__: Istanza identificata di un CI nel tempo. Inglese: _version_.
* __walkthrough__: Tecnica di analisi statica che consiste nell'eseguire una lettura critica, ad ampio spettro, senza l'assunzione di presupposti.
Punta a rilevare la presenza di difetti, viene svolta da gruppi misti d ispettori/sviluppatori ma con ruoli ben distinti.
La strategia con cui si svolge è di percorrere il codice simulandone possibili esecuzioni.
Si svolge anch'essa in 4 fasi: la pianificazione, la lettura, la discussione ed infine la correzione dei difetti. Anche qui, la documentazione viene compilata per avere un rapporto delle attività svolte.

