#############
### Database:

DROP SCHEMA IF EXISTS sweki;
CREATE SCHEMA IF NOT EXISTS sweki DEFAULT CHARACTER SET utf8;
USE sweki;



###########
### Schema:

DROP TABLE IF EXISTS Definizioni;
CREATE TABLE Definizioni (
	id		VARCHAR(50) PRIMARY KEY, # id univoco (per HTML, ad esempio)
	voce	VARCHAR(200) NOT NULL, # voce
	def		VARCHAR(800), # definizione della voce
	eng		VARCHAR(200) # traduzione inglese della voce
);



################
### Popolamento:

INSERT INTO Definizioni VALUES

('ingegneria',
'ingegneria',
'L\'applicazione di princìpi scientifici e matematici per scopi pratici.',
'engineering'),

('ingegneria_del_software',
'ingegneria del software',
'Applicazione di un approccio sistematico, disciplinato e quantificabile allo sviluppo, al funzionamento e al mantenimento del software.',
'software engineering'),

('sistematico',
'sistematico',
'Che abbraccia un metodo.',
'systematic'),

('disciplinato',
'disciplinato',
'Che segue le norme (anzi, la best practice).',
'disciplined'),

('quantificabile',
'quantificabile',
'Esprimibile in modo quantitativo.',
'quantifiable'),

('efficacia',
'efficacia',
'Conformità alle attese.',
'effectiveness'),

('efficienza',
'efficienza',
'Contenimento dei consumi per raggiungere un obiettivo.',
'efficiency'),

('best_practice',
'best practice',
'La prassi che, per esperienza e per studio, abbia mostrato di garantire i migliori risultati in circostanze note e specifiche.',
'best practice'),

('prassi',
'prassi',
'Modo di fare.',
'practice'),

('stakeholder',
'stakeholder',
'Persona a vario titolo coinvolta nel ciclo di vita di un software che ha influenza sul prodotto o sul processo.',
'stakeholder'),

('processo',
'processo (ingegneristico)',
'Insieme di attività correlate e coese che trasformano ingressi in uscite, consumando risorse nel farlo.',
'process'),

('processo_software',
'processo software',
'Processo che porta ad un prodotto software.',
'software process'),

('attività',
'attività',
'Parte di un processo che dev\'essere compiuta entro un determinato periodo di tempo.',
'activity'),

('compito',
'compito',
'Parte di un\'attività.',
'task'),

('tecnica',
'tecnica',
'Ricetta applicata agli strumenti disponibili; modo con cui si usa uno strumento.',
'technique'),

('strumento',
'strumento',
'Insieme di concetti e di metodi, con delle tecnologie di supporto.',
'tool'),

('tecnologia',
'tecnologia',
'Strumento sul quale si opera.',
'technology'),

('standard_di_processo',
'standard di processo',
'Riferimento di base generico usato come stile comune per lo svolgimento delle funzioni aziendali, pensato per una collettività di casi afferenti ad un certo dominio applicativo.',
'process standard'),

('processo_definito',
'processo definito',
'Specializzazione del processo standard necessaria per adattarlo ad esigenze specifiche di progetto.',
NULL),

('processo_di_progetto',
'processo di progetto',
'Istanza di un processo definito che utilizza risorse aziendali per raggiungere obiettivi prefissati (processo calato nella realtà aziendale).',
NULL),

('configurazione',
'configurazione',
'Di quali parti si compone un prodotto e il modo in cui esse stanno assieme.',
'configuration'),

('ciclo_PDCA',
'ciclo PDCA (o ciclo di Deming)',
'Schema iterativo di auto-miglioramento che consiste di quattro punti: Plan (individuare obiettivi di miglioramento), Do (eseguire ciò che si è pianificato), Check (verificare se ha funzionato) e Act (agire per correggersi).',
'PDCA cycle'),

('ciclo_di_vita_prodotto',
'ciclo di vita (di un prodotto)',
'Insieme degli stati che il prodotto assume, dal concepimento al ritiro.',
'software product life cycle'),

('ciclo_di_vita_sviluppo',
'ciclo di vita dello sviluppo (di un prodotto)',
'Parte del ciclo di vita di un prodotto che riguarda il suo sviluppo.',
'software development life cycle'),

('ritiro',
'ritiro (di un prodotto)',
'Momento in cui il prodotto cessa di essere seguito dai suoi creatori.',
'retirement'),

('fase_di_ciclo_di_vita',
'fase (di un ciclo di vita)',
'Durata temporale (che non si ripete) entro uno stato del ciclo di vita e un altro.',
'phase'),

('progetto',
'progetto',
'Insieme di compiti da svolgere in modo collaborativo a fronte di un incarico (che diventa poi un impegno).',
'project'),

('incarico',
'incarico',
NULL,
'assignment'),

('impegno',
'impegno',
NULL,
'commitment'),

('ruolo',
'ruolo',
'Funzione aziendale assegnata a progetto; identifica capacità e compiti.',
'role'),

('allocazione_di_risorse',
'allocazione di risorse (per un progetto)',
'Assegnare attività a ruoli e, poi, ruoli a persone.',
NULL),

('profilo_professionale',
'profilo professionale',
'Insieme di competenze (tecnologiche e metodologiche) e un\'esperienza (espressa in anni e partecipazione a progetti) che fanno da requisiti per l\'assunzione di un ruolo in un progetto.',
'professional profile'),

('analista',
'analista (profilo professionale)',
'Chi ha il compito di individuare, a partire dai bisogni del cliente, il problema da fornire ad un progettista; fa l\'analisi dei requisiti.',
'analyst'),

('progettista',
'progettista (profilo professionale)',
'Chi sintetizza una soluzione a partire dalle specifiche di un problema già analizzato.',
'designer'),

('programmatore',
'programmatore (profilo professionale)',
'Chi implementa una parte della soluzione dei progettisti.',
'programmer'),

('verificatore',
'verificatore (profilo professionale)',
'Chi verifica il lavoro dei programmatori.',
NULL),

('responsabile_di_progetto',
'responsabile di progetto (profilo professionale)',
'Chi pianifica il progetto, assegna le persone ai ruoli giusti e rappresenta il progetto presso il fornitore e il committente.',
'project manager'),

('amministratore_di_progetto',
'amministratore di progetto (profilo professionale)',
'Chi controlla che ad ogni istante della vita del progetto le risorse (umane, materiali, economiche e strutturali) siano presenti e operanti; inoltre, gestisce la documentazione e controlla il versionamento e la configurazione.',
'project administrator'),

('controllore_della_qualità',
'controllore della qualità (profilo professionale)',
'Funzione aziendale (e non ruolo di progetto) che accerta la qualità dei prodotti.',
NULL),

('pianificazione',
'pianificazione',
'Organizzare e controllare tempo, risorse e risultati.',
'planning'),

('analisi_dei_requisiti',
'analisi dei requisiti',
'Definire cosa bisogna fare.',
'requirements analysis'),

('progettazione',
'progettazione',
'Definizione dell\'architettura, delle componenti, delle interfacce e delle altre caratteristiche di un sistema o componente.',
'design'),

('progettazione_architetturale',
'progettazione architetturale',
'Definizione delle componenti e di come esse sono organizzate in un sistema.',
'architectural design'),

('progettazione_di_dettaglio',
'progettazione di dettaglio',
'Definizione del comportamento delle componenti di un sistema, con un livello di dettaglio tale per cui le componenti possano essere implementate.',
'detailed design'),

('diagramma_WBS',
'diagramma WBS (Work Breakdown Structure)',
'Diagramma che decompone in modo gerarchico le attività di un progetto in sotto-attività (coese ma non necessariamente sequenziali).',
'WBS diagram'),

('diagramma_di_Gantt',
'diagramma di Gantt',
'Diagramma che rappresenta la durata, la sequenzialità e il parallelismo delle attività di un progetto.',
'Gantt diagram'),

('diagramma_PERT',
'diagramma PERT (Project Evaluation and Review Technique)',
'Rete che rappresenta le dipendenze temporali (e le criticità) tra attività di un progetto.',
'PERT diagram'),

('revisione_esterna',
'revisione esterna',
'Ispezione ufficiale di un prodotto condotta da un\'organizzazione indipendente da chi ha sviluppato il prodotto.',
'audit'),

('revisione_interna',
'revisione interna',
'Ispezione di un prodotto interna all\'organizzazione che lo sviluppa.',
'joint review'),

('rete',
'rete',
'Grafo orientato.',
'network'),

('slack_time',
'slack time',
'Quantità di tempo tra la data minima a partire da cui un evento può accadere e la data massima oltre la quale esso ritarda gli eventi successivi.',
'slack time'),

('criticità',
'criticità',
'Distanza troppo breve tra attività dipendenti.',
NULL),

('legge_di_Parkinson',
'legge di Parkinson',
'Work expands to fill the time available.',
'Parkinson\'s law'),

('CoCoMo',
'CoCoMo (Constructive Cost Model)',
'Modello per la stima dei costi di un progetto, in tempo/persona.',
'CoCoMo'),

('qualifica',
'qualifica',
'Verifica e validazione ("V&V"), cioè quei processi che assicurano la qualità di un prodotto durante il suo ciclo di vita.',
NULL),

('verifica',
'verifica',
'Valutare se un prodotto soddisfa requisiti, regole o altre condizioni necessarie.',
'verification'),

('validazione',
'validazione',
'La garanzia che un prodotto soddisfi i requisiti da cui è nato.',
'validation'),

('rischio',
'rischio',
'Opposto di opportunità.',
'risk'),

('organizzazione',
'organizzazione',
'Aggregato di persone [?] che agiscono in modo sistematico, disciplinato e quantificabile; contrario di caos.',
'organization'),

('caos',
'caos',
'Contrario di organizzazione.',
'chaos'),

('budget',
'budget',
'Tempo e denaro a disposizione.',
'budget'),

('UML',
'UML (Unified Modelling Language)',
'Famiglia di notazioni grafiche che si basano su un singolo meta-modello e servono a supportare la descrizione e il progetto dei sistemi software.',
'UML'),

('SQL',
'SQL (Structured Query Language',
'Linguaggio di programmazione dichiarativo basato sull\'algebra relazionale che serve a creare, manipolare e interrogare basi di dati relazionali.',
'SQL'),

('scenario',
'scenario',
'Sequenza di passi che descrive un esempio di interazione con un sistema.',
'scenario'),

('caso_d_uso',
'caso d\'uso',
'Insieme di scenari che hanno in comune un obiettivo per un utente.',
'use case'),

('diagramma_dei_casi_d_uso',
'diagramma dei casi d\'uso',
'Grafo orientato che mostra gli attori, i casi d\'uso e le relazioni tra essi: ogni nodo è un attore o un caso d\'uso; ogni arco è una comunicazione tra un attore e un caso d\'uso oppure una relazione (di estensione, inclusione o generalizzazione) tra due casi d\'uso o tra due attori.',
'use case diagram'),

('documentazione',
'documentazione',
'Tutto ciò che documenta le attività di un progetto.',
'documentation'),

('TeX',
'TeX',
'Linguaggio formale di composizione tipografica.',
'TeX'),

('LaTeX',
'LaTeX',
'Sistema di composizione tipografica che utilizza TeX come motore.',
'LaTeX'),

('marcatore',
'marcatore',
'Istruzione che un programma deve eseguire per trattare nel modo specificato dall\'utente una porzione di testo specificata.',
'mark-up'),

('sommario',
'sommario',
'Breve riassunto del contenuto di un documento.',
'abstract'),

('indice_generale',
'indice generale',
'Elenco delle parti di un documento.',
'table of contents'),

('indice_analitico',
'indice analitico',
'Elenco ordinato delle corrispondenze tra particolari termini importanti di un documento e la loro ubicazione in esso.',
'index'),

('glossario',
'glossario',
'Elenco dei significati dei termini più rilevanti di un documento.',
'glossary'),

('bibliografia',
'bibliografia',
'Elenco delle fonti di un documento.',
'bibliografy'),

('infrastruttura_di_progetto',
'infrastruttura (di un progetto)',
'Tutte le risorse hardware e software del progetto.',
NULL),

('modello',
'modello',
'Astrazione della realtà.',
'model'),

('framework',
'framework',
'Struttura di supporto su cui un software può essere organizzato e progettato.',
'framework'),

('ambiente_di_lavoro',
'ambiente di lavoro',
'L\'insieme di persone, di ruoli, di procedure e l\'infrastruttura la cui qualità determina la produttività del progetto.',
'work environment'),

('produttività',
'produttività',
'Rapporto tra valore e costo.',
'productivity'),

('metodo_di_lavoro',
'metodo di lavoro',
'Metodo di lavoro.',
'way of working'),

('configuration_item',
'configuration item (CI)',
'Parte della configurazione di un software.',
'configuration item'),

('baseline',
'baseline',
'Nel ciclo di vita di un progetto, punto d\'arrivo tecnico dal quale non si retrocede.',
'baseline'),

('milestone',
'milestone',
'Punto nel tempo associato ad un valore strategico.',
'milestone'),

('repository',
'repository',
'Base di dati centralizzata nella quale risiedono, individualmente, tutti i CI di ogni baseline nella loro storia completa.',
'repository'),

('ramo_di_repository',
'ramo (di un repository)',
'Insieme di versioni di file sorgente in evoluzione.',
'branch'),

('versione_di_CI',
'versione (di un CI)',
'Istanza identificata di un CI nel tempo.',
'version'),

('integrazione_continua',
'integrazione continua',
'Pratica di sviluppo in cui i membri di un progetto integrano il loro lavoro frequentemente (quotidianamente) in modo automatizzato.',
'continuous integration'),

('regola',
'regola',
'Norma di progetto sottoposta a verifica.',
'rule'),

('raccomandazione',
'raccomandazione',
'Norma di progetto suggerita, non sottoposta a verifica.',
'recommendation'),

('protocollo',
'protocollo',
'Accordo di interfacce.',
'protocol'),

('algoritmo',
'algoritmo',
'Sequenza finita di passi per la risoluzione di un problema.',
'algorithm'),

('design_pattern',
'design pattern',
'Soluzione progettuale generale ad un problema ricorrente.',
'design pattern'),

('sistema',
'sistema',
'Insieme di componenti organizzati per compiere una o più funzioni.',
'system'),

('componente',
'componente',
'Insieme di unità funzionalmente coese; parte di un sistema. (In Java, rappresentabile da uno o più package.)',
'component'),

('unità',
'unità',
'Insieme coeso di moduli, appaltabili in realizzazione a un singolo programmatore; non ha sempre un corrispondente diretto in un linguaggio di programmazione. È anche la più piccola quantità di software che conviene verificare da sola.',
'unit'),

('modulo',
'modulo',
'L\'elemento atomico dell\'architettura di un software; tipicamente una classe o un interfaccia.',
'module'),

('requisito',
'requisito',
'Bisogno da soddisfare o vincolo da rispettare.',
'requirement'),

('requisito_utente',
'requisito utente',
'Richiesta generale, ad alto livello.',
'user requirement'),

('requisito_di_sistema',
'requisito di sistema',
'Definizione formale e dettagliata di una funzione del sistema.',
'system requirement'),

('requisito_di_prodotto',
'requisito di prodotto',
'Bisogno o vincolo sul prodotto da sviluppare.',
NULL),

('requisito_di_processo',
'requisito di processo',
'Vincolo sullo sviluppo del prodotto.',
NULL),

('requisito_funzionale',
'requisito funzionale',
'(di un prodotto software) servizio che il prodotto deve fornire.',
'functional requirement'),

('requisito_non_funzionale',
'requisito non funzionale',
'(di un prodotto software) vincolo su uno o più servizi che il prodotto fornisce.',
'non-functional requirement'),

('architettura',
'architettura',
'La struttura organizzativa di un sistema o componente.',
'architecture'),

('coesione',
'coesione',
'Grado di relazione tra parti associate di un sistema che concorrono agli stessi obiettivi.',
'cohesion'),

('accoppiamento',
'accoppiamento',
'Grado di dipendenza tra le varie componenti di un sistema.',
'coupling'),

('coerenza',
'coerenza',
'L\'esser composto da parti che non sono in disaccordo tra loro, cioè non affermano cose che si contraddicano.',
'consistency'),

('qualità',
'qualità',
'L\'insieme delle caratteristiche di un\'entità che ne determinano la capacità di soddisfare esigenze espresse e implicite.',
'quality'),

('gestione_della_qualità',
'gestione della qualità',
'L\'insieme dei processi che assicurano che prodotti e implementazioni di processi rispettino gli obiettivi di qualità (di un\'organizzazione) e soddisfino gli stakeholder.',
'quality management'),

('valutazione',
'valutazione',
'Verifica quantificata.',
'evaluation'),

('metrica',
'metrica',
'L\'interpretazione di un sistema di unità di misura.',
'metric'), # metric?

('misurazione_quantitativa',
'misurazione quantitativa',
'L\'uso di una metrica per assegnare un valore su una scala predefinita.',
'quantitative measurement'),

('misura',
'misura',
'Risultato di una misurazione.',
NULL), # forse 'measurement'?

('business_logic',
'business logic',
'La parte di un software che ha a che fare con il dominio applicativo del software; questa parte è tipicamente riusabile e quindi condivisa tra diversi software che operano nello stesso dominio.',
'business logic'),

('application_logic',
'application logic',
'La parte di un software che è specifica di quel software e non è intesa per essere riusata in altri software.',
'application logic'),

('quality_assurance',
'quality assurance',
'Insieme di attività che valutano i processi con i quali un prodotto viene sviluppato.',
'quality assurance'),

('inspection',
'inspection',
'Tecnica di analisi statica che consiste nell\'eseguire una lettura mirata, alla ricerca di errori noti.',
'inspection'),

('walkthrough',
'walkthrough',
'Tecnica di analisi statica che consiste nell\'eseguire una lettura critica, ad ampio spettro, senza l\'assunzione di presupposti.',
'walkthrough'),

('test',
'test',
'Attività di analisi dinamica che osserva i risultati dell\'esecuzione di un sistema (o parte di esso) sotto determinate condizioni.',
'test'),

('test_di_unità',
'test di unità',
'Test che verifica la correttezza di una singola unità del sistema in esame.',
'unit test'),

('test_di_integrazione',
'test di integrazione',
'Test che verifica la correttezza dell\'integrazione di un insieme di unità in una componente del sistema in esame.',
'integration test'),

('test_di_sistema',
'test di sistema',
'Test che verifica la copertura dei requisiti da parte del sistema in esame.',
'system test'),

('test_di_validazione',
'test di validazione',
'Test che verifica il soddisfacimento del capitolato d\'appalto da parte del sistema in esame.',
'validation test'),

('test_strutturale',
'test strutturale',
'Test di unità che analizza soltanto il comportamento dell\'unità e non la sua logica interna.',
'structural test'),

('test_funzionale',
'test funzionale',
'Test di unità che analizza la logica interna del codice di un\'unità.',
'functional test'),

('guasto',
'guasto',
'Causa di un errore.',
'fault'),

('errore',
'errore',
'Stato del sistema che, se attivato, produce un malfunzionamento.',
'error'),

('malfunzionamento',
'malfunzionamento',
'Esecuzione di un software difforme dalle attese.',
'failure'),

('analisi_statica',
'analisi statica',
'Valutazione di un sistema (o di una sua componente) basata sulla sua forma, struttura, contenuto o documentazione.',
'static analysis'),

('analisi_dinamica',
'analisi dinamica',
'Valutazione di un sistema (o di una sua componente) basata sul suo comportamento durante l\'esecuzione.',
'dynamic analysis'),

('caso_di_prova',
'caso di prova',
'Terna di valori (input, output, ambiente) che specifica il comportamento che un sistema (o parte di esso) deve avere in un caso specifico.',
'test case'),

('batteria_di_prove',
'batteria di prove',
'Insieme di casi di prova.',
'test suite'),

('rendimento_decrescente',
'rendimento decrescente, legge del',
'Man mano che si aumenta lo sforzo, il rendimento cresce inizialmente ma poi diminuisce sempre più.',
'diminishing returns'),

('copertura del codice',
'copertura del codice',
'Percentuale di codice sorgente eseguito durante un caso di prova.',
'code coverage'),

('complessità_ciclomatica',
'complessità ciclomatica',
'Misura quantitativa del numero di cammini linearmente indipendenti che il codice sorgente di un programma può percorrere.',
'cyclomatic complexity');
