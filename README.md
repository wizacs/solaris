# Solaris

**Solaris** è un sistema leggero e modulare per il monitoraggio dei consumi energetici e ambientali all'interno di contesti aziendali. È progettato per essere facilmente distribuibile, efficiente e privo di componenti superflui.

## Tecnologie utilizzate

- **GitHub Codespaces**: ambiente di sviluppo basato su Linux, usato per semplificare e standardizzare l’ambiente di lavoro.
- **Docker**: ogni componente è containerizzato per garantire portabilità e isolamento.
- **PostgreSQL**: database relazionale locale, utilizzato per l’archiviazione strutturata dei dati raccolti dai sensori.
- **Grafana**: interfaccia di visualizzazione dei dati in tempo reale tramite dashboard personalizzabili.
- **MQTT**: protocollo di comunicazione tra i sensori fisici e il sistema.

## Architettura

Il sistema si compone di tre servizi principali:

### Collector MQTT

Raccoglie i dati inviati in tempo reale dai sensori wireless MQTT (es. consumo elettrico, temperatura, umidità, qualità dell’aria, luminosità) e li invia al database.

### Database PostgreSQL

Gestisce in locale la persistenza dei dati, garantendo affidabilità e performance anche su grandi volumi di dati nel tempo.

### Grafana

Visualizza i dati raccolti tramite dashboard intuitive. Permette analisi storiche, confronti e configurazione di alert.

## Sensori supportati

Solaris supporta sensori MQTT economici e facilmente reperibili. Questi sensori inviano i dati in modalità wireless, ricevuti da un’istanza Solaris installata, ad esempio, su un Raspberry Pi.

## Obiettivi del progetto

- Essere **leggero** e facilmente installabile.
- Evitare dipendenze superflue o servizi ridondanti.
- Essere **distribuibile** rapidamente con un solo comando Docker.
- Garantire **scalabilità** modulare (aggiunta di sensori o dashboard).