#############
### Database:

DROP SCHEMA IF EXISTS sweki;
CREATE SCHEMA IF NOT EXISTS sweki DEFAULT CHARACTER SET utf8;
USE sweki;



###########
### Schema:

DROP TABLE IF EXISTS Definizioni;
CREATE TABLE Definizioni (
	id		VARCHAR(50) PRIMARY KEY, # id univoco (per HTML)
	voce	VARCHAR(200) NOT NULL, # voce
	def		VARCHAR(800), # definizione della voce
	eng		VARCHAR(200) # traduzione inglese della voce
	# la traduzione è NULL se è uguale all'italiano o se non l'ho ancora messa
);



################
### Popolamento:

INSERT INTO Definizioni VALUES
('ingegneria', 'ingegneria', 'l\'applicazione di princìpi scientifici e matematici per scopi pratici', 'engineering'),
('ingegneria_del_software', 'ingegneria del software', 'applicazione di un approccio sistematico, disciplinato e quantificabile allo sviluppo, al funzionamento e al mantenimento del software', 'software engineering'),
('sistematico', 'sistematico', 'che abbraccia un metodo', 'systematic'),
('disciplinato', 'disciplinato', 'che segue le norme (anzi, la best practice)', 'disciplined'),
('quantificabile', 'quantificabile', 'esprimibile in modo quantitativo', 'quantifiable'),
('efficacia', 'efficacia', 'conformità alle attese', 'effectiveness'),
('efficienza', 'efficienza', 'contenimento dei consumi per raggiungere un obiettivo', 'efficiency'),
('best_practice', 'best practice', 'la prassi che, per esperienza e per studio, abbia mostrato di garantire i migliori risultati in circostanze note e specifiche', NULL),
('prassi', 'prassi', 'modo di fare', NULL),
('stakeholder', 'stakeholder', 'persona a vario titolo coinvolta nel ciclo di vita di un software che ha influenza sul prodotto o sul processo', NULL),
('processo', 'processo (ingegneristico)', 'insieme di attività correlate e coese che trasformano ingressi in uscite, consumando risorse nel farlo', 'process'),
('processo_software', 'processo software', 'processo che porta ad un prodotto software', 'software process'),
('attività', 'attività', 'parte di un processo', 'activity'),
('compito', 'compito', 'parte di un\'attività', 'task'),
('tecnica', 'tecnica', 'ricetta applicata agli strumenti disponibili; modo con cui si usa uno strumento', 'technique'),
('strumento', 'strumento', 'insieme di concetti e di metodi, con delle tecnologie di supporto', 'tool'),
('tecnologia', 'tecnologia', 'strumento sul quale si opera', 'technology'),
('standard_di_processo', 'standard di processo', 'riferimento di base generico usato come stile comune per lo svolgimento delle funzioni aziendali, pensato per una collettività di casi afferenti ad un certo dominio applicativo', 'process standard'),
('processo_definito', 'processo definito', 'specializzazione del processo standard necessaria per adattarlo ad esigenze specifiche di progetto', NULL),
('processo_di_progetto', 'processo di progetto', 'istanza di un processo definito che utilizza risorse aziendali per raggiungere obiettivi prefissati (processo calato nella realtà aziendale)', NULL),
('configurazione', 'configurazione', 'di quali parti si compone un prodotto e il modo in cui esse stanno assieme', 'configuration'),
('schema_PDCA', 'schema PDCA (o ciclo di Deming)', 'schema iterativo di auto-miglioramento che consiste di quattro punti: Plan (individuare obiettivi di miglioramento), Do (eseguire ciò che si è pianificato), Check (verificare se ha funzionato) e Act (agire per correggersi)', NULL),
('ciclo_di_vita_prodotto', 'ciclo di vita (di un prodotto)', 'insieme degli stati che il prodotto assume, dal concepimento al ritiro', 'software product life cycle'),
('ciclo_di_vita_sviluppo', 'ciclo di vita dello sviluppo (di un prodotto)', 'parte del ciclo di vita di un prodotto che riguarda il suo sviluppo', 'software development life cycle'),
('ritiro', 'ritiro (di un prodotto)', 'momento in cui il prodotto cessa di essere seguito dai suoi creatori', 'retirement'),
('fase_di_ciclo_di_vita', 'fase (di un ciclo di vita)', 'durata temporale (che non si ripete) entro uno stato del ciclo di vita e un altro', 'phase'),
('progetto', 'progetto', 'insieme di compiti da svolgere in modo collaborativo a fronte di un incarico (che diventa poi un impegno)', 'project'),
('incarico', 'incarico', NULL, 'assignment'),
('impegno', 'impegno', NULL, 'commitment'),
('ruolo', 'ruolo', 'funzione aziendale assegnata a progetto; identifica capacità e compiti', NULL),
('allocazione_di_risorse', 'allocazione di risorse (per un progetto)', 'assegnare attività a ruoli e, poi, ruoli a persone', NULL),
('profilo_professionale', 'profilo professionale', 'insieme di competenze (tecnologiche e metodologiche) e un\'esperienza (espressa in anni e partecipazione a progetti) che fanno da requisiti per l\'assunzione di un ruolo in un progetto', NULL),
('analista', 'analista (profilo professionale)', 'chi ha il compito di individuare, a partire dai bisogni del cliente, il problema da fornire ad un progettista; fa l\'analisi dei requisiti', 'analyst'),
('progettista', 'progettista (profilo professionale)', 'chi sintetizza una soluzione a partire dalle specifiche di un problema già analizzato', 'designer'),
('programmatore', 'programmatore (profilo professionale)', 'chi implementa una parte della soluzione dei progettisti', 'programmer'),
('verificatore', 'verificatore (profilo professionale)', 'chi verifica il lavoro dei programmatori', NULL),
('responsabile_di_progetto', 'responsabile di progetto (profilo professionale)', 'chi pianifica il progetto, assegna le persone ai ruoli giusti e rappresenta il progetto presso il fornitore e il committente', 'project manager'),
('amministratore_di_progetto', 'amministratore di progetto (profilo professionale)', 'chi controlla che ad ogni istante della vita del progetto le risorse (umane, materiali, economiche e strutturali) siano presenti e operanti; inoltre, gestisce la documentazione e controlla il versionamento e la configurazione', 'project administrator'),
('controllore_della_qualità', 'controllore della qualità (profilo professionale)', 'funzione aziendale (e non ruolo di progetto) che accerta la qualità dei prodotti', NULL),
('pianificazione', 'pianificazione', 'organizzare e controllare tempo, risorse e risultati', 'planning'),
('analisi_dei_requisiti', 'analisi dei requisiti', 'definire cosa bisogna fare', 'requirements analysis'),
('progettazione', 'progettazione', 'definizione dell\'architettura, dei componenti, delle interfacce e delle altre caratteristiche di un sistema o componente', 'design'),
('diagramma_WBS', 'diagramma WBS (Work Breakdown Structure)', 'diagramma che decompone in modo gerarchico le attività di un progetto in sotto-attività (coese ma non necessariamente sequenziali)', 'WBS diagram'),
('diagramma_di_Gantt', 'diagramma di Gantt', 'diagramma che rappresenta la durata, la sequenzialità e il parallelismo delle attività di un progetto', 'Gantt diagram'),
('diagramma_PERT', 'diagramma PERT (Project Evaluation and Review Technique)', 'rete che rappresenta le dipendenze temporali (e le criticità) tra attività di un progetto', 'PERT diagram'),
('revisione_esterna', 'revisione esterna', 'ispezione ufficiale di un documento condotta da un\'organizzazione indipendente da chi ha prodotto i documenti', 'audit'),
('revisione_interna', 'revisione interna', NULL, 'joint review'),
('rete', 'rete', 'grafo orientato', 'network'),
('slack_time', 'slack time (di un evento)', 'quantità di tempo tra la data minima a partire da cui un evento può accadere e la data massima oltre la quale esso ritarda gli eventi successivi', 'slack time'),
('criticità', 'criticità', 'distanza troppo breve tra attività dipendenti', NULL),
('legge_di_Parkinson', 'legge di Parkinson', 'Work expands to fill the time available', 'Parkinson\'s law'),
('legge_della_domanda', 'legge della domanda', 'Quanto più è grande qualcosa, tanto maggiore sarà la domanda per essa', NULL),
('CoCoMo', 'CoCoMo (Constructive Cost Model)', 'modello per la stima dei costi di un progetto, in tempo/persona', NULL),
('qualifica', 'qualifica', 'verifica e validazione ("V&V")', NULL),
('verifica', 'verifica', 'valutare se un prodotto soddisfa requisiti, regole o altre condizioni necessarie', 'verification'),
('validazione', 'validazione', 'la garanzia che un prodotto soddisfi i requisiti da cui è nato', 'validation'),
('rischio', 'rischio', 'opposto di opportunità', 'risk'),
('organizzazione', 'organizzazione', 'aggregato di persone [?] che agiscono in modo sistematico, disciplinato e quantificabile; contrario di caos', 'organization'),
('caos', 'caos', 'contrario di organizzazione', 'chaos'),
('budget', 'budget', 'tempo e denaro', NULL),
('UML', 'UML (Unified Modelling Language)', 'famiglia di notazioni grafiche che si basano su un singolo meta-modello e servono a supportare la descrizione e il progetto dei sistemi software', NULL),
('SQL', 'SQL (Structured Query Language', 'linguaggio di programmazione dichiarativo basato sull\'algebra relazionale che serve a creare, manipolare e interrogare basi di dati relazionali', NULL),
('scenario', 'scenario', 'sequenza di passi che descrive un esempio di interazione con un sistema', NULL),
('caso_d_uso', 'caso d\'uso', 'insieme di scenari che hanno in comune un obiettivo per un utente', 'use case'),
('diagramma_dei_casi_d_uso', 'diagramma dei casi d\'uso', 'grafo orientato in cui ogni nodo è un attore o un caso d\'uso e ogni arco è una comunicazione tra un attore e un caso d\'uso oppure una relazione (di estensione, inclusione o generalizzazione) tra due casi d\'uso o tra due attori', 'use case diagram'),
('documentazione', 'documentazione', 'tutto ciò che documenta le attività di un progetto', 'documentation'),
('TeX', 'TeX', 'linguaggio formale di composizione tipografica', NULL),
('LaTeX', 'LaTeX', 'sistema di composizione tipografica che utilizza TeX come motore', NULL),
('marcatore', 'marcatore', 'istruzione che un programma deve eseguire per trattare nel modo specificato dall\'utente una porzione di testo specificata', 'mark-up'),
('sommario', 'sommario', 'breve riassunto del contenuto di un documento', 'abstract'),
('indice_generale', 'indice generale', 'elenco delle parti di un documento', 'table of contents'),
('indice_analitico', 'indice analitico', 'elenco ordinato delle corrispondenze tra particolari termini importanti di un documento e la loro ubicazione in esso', 'index'),
('glossario', 'glossario', 'elenco dei significati dei termini più rilevanti di un documento', 'glossary'),
('bibliografia', 'bibliografia', 'elenco delle fonti di un documento', 'bibliografy'),
('infrastruttura_di_progetto', 'infrastruttura (di un progetto)', 'tutte le risorse hardware e software del progetto', NULL),
('modello', 'modello', 'astrazione della realtà', 'model'),
('framework', 'framework', 'struttura di supporto su cui un software può essere organizzato e progettato', NULL),
('ambiente_di_lavoro', 'ambiente di lavoro', 'l\'insieme di persone, di ruoli, di procedure e l\'infrastruttura la cui qualità determina la produttività del progetto', NULL),
('metodo_di_lavoro', 'metodo di lavoro', 'metodo di lavoro', 'way of working'),
('configuration_item', 'configuration item (CI)', 'parte della configurazione di un software', NULL),
('baseline', 'baseline', 'nel ciclo di vita di un progetto, punto d\'arrivo tecnico dal quale non si retrocede', NULL),
('milestone', 'milestone', 'punto nel tempo associato ad un valore strategico', NULL),
('repository', 'repository', 'base di dati centralizzata nella quale risiedono, individualmente, tutti i CI di ogni baseline nella loro storia completa', NULL),
('ramo_di_repository', 'ramo (di un repository)', 'insieme di versioni di file sorgente in evoluzione', 'branch'),
('versione_di_CI', 'versione (di un CI)', 'istanza identificata di un CI nel tempo', 'version'),
('integrazione_continua', 'integrazione continua', 'pratica che consiste nell\'allineamento frequente degli ambienti di lavoro degli sviluppatori verso l\'ambiente condiviso', 'continuous integration'),
('regola', 'regola', 'norma di progetto sottoposta a verifica', NULL),
('raccomandazione', 'raccomandazione', 'norma di progetto suggerita, non sottoposta a verifica', 'recommendation'),
('protocollo', 'protocollo', 'accordo di interfacce', 'protocol'),
('design_pattern', 'design pattern', 'soluzione progettuale generale ad un problema ricorrente', NULL),
('sistema', 'sistema', 'insieme di componenti organizzati per compiere una o più funzioni', 'system'),
('componente', 'componente', 'parte di un sistema', 'component'),
('unità', 'unità', 'la più piccola quanità di software che conviene verificare da sola', 'unit'),
('modulo', 'modulo', 'parte di un\'unità', 'module'),
('requisito', 'requisito', 'bisogno da soddisfare o vincolo da rispettare', 'requiremement'),
('requisito_utente', 'requisito utente', 'richiesta generale, ad alto livello', NULL),
('requisito_di_sistema', 'requisito di sistema', 'definizione formale e dettagliata di una funzione del sistema', NULL),
('requisito_di_prodotto', 'requisito di prodotto', 'bisogno o vincolo sul prodotto da sviluppare', NULL),
('requisito_di_processo', 'requisito di processo', 'vincolo sullo sviluppo del prodotto', NULL),
('requisito_funzionale', 'requisito funzionale', '(di un prodotto software) servizio che il prodotto deve fornire', NULL),
('requisito_non_funzionale', 'requisito non funzionale', '(di un prodotto software) vincolo su uno o più servizi che il prodotto fornisce', NULL),
('architettura', 'architettura', 'la struttura organizzativa di un sistema o componente', 'architecture'),
('coesione', 'coesione', 'caratteristica di un sistema per la quale parti associate concorrono agli stessi obiettivi', NULL),
('basso_accoppiamento', 'basso accoppiamento', 'minimizzazione delle dipendenze tra i vari componenti di un sistema', 'loose coupling'),
('coerenza', 'coerenza', 'l\'esser composto da parti che non sono in disaccordo tra loro, cioè non affermano cose che si contraddicano', 'consistency'),
('qualità', 'qualità', 'l\'insieme delle caratteristiche di un\'entità che ne determinano la capacità di soddisfare esigenze espresse e implicite', 'quality'),
('valutazione', 'valutazione', 'verifica quantificata', 'evaluation'),
('metrica', 'metrica', 'l\'interpretazione di un sistema di unità di misura', NULL),
('misurazione_quantitativa', 'misurazione quantitativa', 'l\'uso di una metrica per assegnare un valore su una scala predefinita', 'quantitative measurement');
