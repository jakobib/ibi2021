
---

![ Free Universal Construction Kit (CC BY-NC-SA <http://fffff.at/>)](kit_6469_universal_500x333.jpg){height=80%}

# Was ist Interoperabilität?

---

\LARGE
Fähigkeit **unterschiedlicher Systeme**, möglichst reibungslos **zusammenzuarbeiten**

\normalsize
\vfill

* *Zusammenarbeiten*: sinnvoller Austausch von Daten

* *Möglichst reibungslos*: so gut es eben geht

# Wie lässt sich Interoperabilität herstellen?

## A: **Zentralisierung** statt Interoperabilität

Beispiel
 : Gemeinsamer Verbundkatalog

Vorteil
 : Klare Verantwortlichkeit

Probleme
 : Abgeschlossene Datensilos, interne Inkonsistenzen

## B: Gemeinsame **Standards**

Beispiel
 : Aggregator-Formate (Schema.org, DataCite XML...)

Vorteil
 : Offen für beliebig viele Akteure

Problem
 : Verschiedene Standards\
   für verschiedene Anwendungen

## C: Integration durch **Mapping/Konvertierung**

Beispiel
 : Konvertierung beim Import/Export von Formaten,\
   Vokabular-Mapping im Projekt coli-conc

Vorteil
 : Sehr flexibel

Problem
 : Aufwändig und fehleranfällig


## Beispiel: Klemmbausteine

A) Zentralisierung:\
   Wir kaufen einfach alles nur von LEGO!

B) Standards:\
   LEGO, Q-Bricks, BlueBrixx... passt doch zusammen!

C) Mapping:\
   Adapter wie das Free Universal Construction Kit

\vfill

*Meist wackelt es trotzdem ein bisschen...*

## Besonderheit bei Interoperabilität von Daten

Wau Holland (1951-2001):

> Der Computer ist eine Maschine zum Kopieren und Verändern von Bits.

\vfill

* Daten lassen sich verlustfrei kopieren und ändern
* Automatisierung: einmal, zweimal, $\infty$...
* Es gibt keine natürlichen Daten-Einheiten\
  (Datensätze, Felder, Sammlungen...)

## Interoperabilität von Daten herstellen

Welche Strategie wird in der Praxis angewandt?

A) Zentralisierung:\
  Keine Gesamtlösung aber hilfreich zur Abgrenzung von Systemen

B) Standards:\
  Grundlage der gesamten Infrastruktur

C) Mapping:\
  Findet als Konvertierung an vielen Stellen statt


## Metadaten-Interoperabilität in der Theorie

1. **Interoperabilität** ist die Fähigkeit unterschiedlicher Systeme, reibungslos Daten auszutauschen

2. **Informationssysteme** sind quasi-geschlossene Einheiten, die standardisierte Daten austauscht

3. **Datenkonvertierung** zwischen unterschiedlichen Standards

\vfill
*Problem gelöst?* 

## Metadaten-Interoperabilität in der Praxis

Probleme:

* Es gibt sehr viele Standards und Informationssysteme

* Standards sind meist unvollständig

* Mappings/Konvertierungen sind meist unvollständig

Lösung:

* Kenntnis von Metadaten-Standards und Mapping-Verfahren

* Interoperabilität muss immer wieder neu hergestellt werden

# Metadaten-Standards und Mapping-Verfahren

## Standards 1

![Lego dimensions (CC BY-SA Cmglee)](lego-dimensions.png){width=90%}

## Standards 2-15

![[CC BY-NC xkcd](https://xkcd.com/927/)](standards.png){width=95%}

## Metadaten-Standards

* **Vereinbarungen** wie Daten aussehen sollen

* **Explizite** Vereinbarungen wie Daten aussehen sollen

    * Publiziert und verständlich, mit Beispielen
    * Versioniert (was ist seit wann wie geregelt?)
    * Maschinenlesbar

* **Aufbauend** auf bereits etablierten Standards

    * Anwendungsbezogen
    * Möglichst in verschiedenen Systemen umgesetzt

* **Überprüfbar**

    * Validierung von Daten (Fehler erkennen)
    * Konsequente (mit Fehlern umgehen)
    * Fehler $\neq$ Fehler

## Ebenen der Datenmodellierung

![](data-modeling-simplified.png){width=95%}

* Hinter Daten steht immer (implizit oder explizit) mindestens ein Modell
* Interoperabilität erfordert vor allem gleiche Modelle
* Datenformate bewegen sich zwischen Modell und Implementierung
* Auf jeder Ebene weitere Unterteilung möglich

## Beispiel: Ebenen von Metadaten-Standards in der Praxis

* Lokale Anwendungspraxis einer Bibliothek
* PICA-K10plus-Format
* PICA-Format
* PICA/XML
* XML
* Unicode
* Bytes

## Wie sind Standards festgelegt?

* Spezifikation (so soll es sein)
* Implementierung (so ist es umgesetzt)
* Datenpraxis (so wird es interpretiert)

*Offizielle Standards, De-Facto Standards, Implizite Standards, scheinbare Standards, Anwendungsprofile...*

## Wie sind Standards zugänglich?

* Implementierung und Datenpraxis: konkret ansehen

* Spezifikationen:

    * Semi-formale Beschreibung: verstehbar

    * Formale Schemas: maschinenlesbar und überprüfbar

## Beispiel: Spezifikation einer Jahreszahl

Implementierung: `year = int(input.readline())`

Datenpraxis: `2019, 1988, 722, 23...`
 
Semi-Formal:

> Jahreszahlen werden durch eine bis vier Ziffern ohne fühende Nullen ausgedrückt

Formal: `YEAR := [1-9][0-9]*`


\vfill
\small
*Überraschung: keines dieser Beispiele ist 100% deckungsgleich!*

## Arten von Daten-Standards und -formaten

* **Strukturierungssprachen:**\
  CSV, JSON, RDF...

* **Schemasprachen:**\
  Reguläre Ausdrücke, XSD, JSON Schema...

* **Abfragesprachen:**\
  SQL, XPath, XQuery, CSS Selector...

* **Datenmodelle:**\
  BIBFRAME, CIDOC-CRM, Dublin Core...

## Interoperabilität hängt von der Datenebene ab

Was muss interoperabel sein?

* Datenmodelle: Semantik (theoretisch interoperabel)

* Strukturierungssprache: Werkzeuge (praktisch umsetzbar)

Wie wird Interoperabilität umgesetzt?

* Schemas helfen passende Elemente zu finden\
  (z.B. Feld für Jahreszahl)

* Abfragesprache helfen auf passende Elemente zu verweisen

# Beispiel: ein Datensatz

## Ein Datensatz (ohne Datenformat)

Name                Lebensdaten
------------------- -------------
Douglas Noël Adams  1952-2001

*Erkennen Sie Modell und Schema?*

## Ein Datensatz (CSV)

~~~csv
name,dates
Douglas Noël Adams,1952-2001
~~~

## Ein Datensatz (YAML)

~~~yaml
name: Douglas Noël Adams
dates: 1952-2001
~~~

## Ein Datensatz (JSON)

~~~json
{
  "name": "Douglas Noël Adams",
  "dates": "1952-2001"
}
~~~

## Ein Datensatz (XML)

~~~xml
<name>Douglas Noël Adams</name>
<dates>1952-2001</dates>
~~~
...


# Daten-Mapping/Konvertierung

## Arten von Mappings/Konvertierungen

Konvertierung zwischen Formaten

* `DD.MM.YYYY` $\leftrightarrow$ `YYYY-MM-DD`
* "Nachname, Vorname" $\rightarrow$ "Vorname Nachname" 
* ...

Mapping zwischen Vokabularen

* GND-ID $\leftrightarrow$ ORCID
* RVK $\leftrightarrow$ BK
* ...

## Konvertierung zwischen Formaten

* Muss meist programmiert werden

* Je nach Überschneidung des Datenmodells\
  mehr oder weniger vollständig

* Mit jeder Konvertierung können Inhalte verloren gehen

## Konvertierung zwischen Vokabularen

* Mapping von Identifiern statt Benennungen 

* Einfach wenn 1-zu-1 Zuordnung möglich (z.B. Personen)

* Bei Sachgebieten schwieriger (Mapping von Datenmodellen)

\vfill

Mapping-Tool Cocoda bitte ausprobieren: <https://coli-conc.gbv.de/cocoda/>!

# Zusammenfassung

## Worum ging es?

* Metadaten-Interoperabilität: Datenaustausch zwischen unterschiedlichen Systemen
* Strategien: Zentralisierung, Standards, Mapping

* Daten folgend (hoffentlich) immer irgendwelchen Regeln

  * Anforderungen an gute Standards
  * Standards durch Spezifikation, Implementierung, Datenpraxis

* Kenntnis von Metadaten-Standards und Mapping-Verfahren!

## Weiterführendes

* [GBV Formatdatenbank format.gbv.de](https://format.gbv.de/)

* [Grundlagen Datenformate](https://pro4bib.github.io/pica/#/grundlagen?id=datenformate) im Handbuch\
*Einführung in die Verarbeitung von PICA-Daten*

* *Anleitung für schlechte Standards* <https://doi.org/10.5281/zenodo.1025743> und <https://youtu.be/o51FOLsh4Ec>

* [Kompetenzzentrum Interoperable Metadaten (KIM)](https://dini.de/ag/kim/)

* [Projekt coli-conc](https://coli-conc.gbv.de/)

## Bitte Fragen!

Niemand kann alles auf Anhieb verstehen.

Was haben Sie am meisten nicht verstanden?

