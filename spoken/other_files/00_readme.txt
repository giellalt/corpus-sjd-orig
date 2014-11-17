=====
Intro
=====

"spoken" is a new dir, created for (transcribed) spoken language data stored at freecorpus by the Freiburg-based language documentation projects (Techdoc: http://giellatekno.uit.no/doc/freiburg/freiburg.html).

Annotations written by us in ELAN include minimally an orthographic tier and one translation into the local lingua franca, these data could perhaps also be used as parallel corpora (Techdoc: http://giellatekno.uit.no/doc/freiburg/ELAN.html)

The present folder includes ELAN example data for testing a pipeline between the multimedia archive at TLA and the corpus infrastructure at GT. Only the .eaf-files (the annotations) are stored at GT. The original audio/video files (available from The Language Archive (e.g. http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1737337%23 or http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1566753%23) are not relevant here, but can always be linked back to the ELAN-annotations.

=====
TODO (for the GT-part [Ciprian])
=====

Our aim is to overcome manual annotation of our recordings, but instead use computational tools, like Giellatekno's FST analyzers.

==> We need a pipeline for:
==> 1) running the FST morphological analyzer on the text transcribed in ELAN
==> 2) bringing the resulting analyzis back into the ELAN structure

We will test this pipeline with a preliminary PoS tagger based on the FST morphological analyzer. 

The relevant tier for the analyzer is the tier called "word", which inlcudes the utterance devided into tokens. 

The result of the analyzis (i.e. PoS tags) are written in the dependend tier "pos".

Example 
(ELAN source data)
ref@xyz   | sjd0000xyz-1        |
orth@xyz  | Та̄лл лӣ шӯр.        |
word@xyz  | та̄лл | лӣ | шӯр | . |

(ELAN after tagging)
ref@xyz   | sjd0000xyz-1          |
orth@xyz  | Та̄лл лӣ шӯр           |
word@xyz  | та̄лл | лӣ | шӯр | .   |
pos@xyz   | N    | V  | Adj | PCT |

POS-Ambiguity?
N || V
Alle POS-Ambiguitäten für die weitere manuelle Bestimmung der Wortklasse anbieten,
jedoch so viele wie möglich automatisch kontextuell filtern.

=====
TODO [later]
=====

We will test this pipeline with the FST morphological analyzer. 

First, we create a copy of "word" called "morph". The analyzed forms should be merged into this new tier. E.g. a Kildin form та̄лэсьт should be written in the tier "morph" as:
*та̄лл+N+Sg+Loc

Ambiguity?
та̄лл+N+Sg+Gen || та̄лл+N+Pl+Nom

It might be useful to split the result of the analysis into three separate tiers (instead of presenting them in linerar order):
*lemma
*pos
*morph

E.g. та̄лэсьт:
*(lemma) та̄лл
*(pos) N
*(morph) Sg+Loc


=====
ELAN test files in the present dir
=====

The ELAN example files might include more tiers than the ones relevant for the Freiburg-Tromsø work. Relevant for us are only the following tiers:
*ref (reference to the selected utterance [unique labels are provided automatically by ELAN])
*orth (orthographic representation)
*word (tokenized orth-tier [tokenization can be done automatically in ELAN])
*pos (parts of speech, so far tagging is done manually)
*morph (a copy of "word" to be overwritten by the result of the FST-analysis)
The last tier is where the FST-analysis is done.

Normally several speakers are transcribed in one ELAN session. Each speaker gets its own ref-tier (and the respective childs in the tier structure). In the teir-names different speakers are differentiated by …@SpeakerXYZ.

See also the respective screenshoots for some of the test ELAN-files. 

Note that the morphosyntactic glossing in the other tiers of the example files is not always very consistent (because it was done manually). 

Some parts of the annotations are also incomplete.


=====
TODO (for the FR-part [Michael])
=====

1) Goldstandard für ELAN-Annotationen fixieren
minimal tier set
*ref(erence tier)
*orth(ography tier)
*word (tier)
*pos (tier)


2) FST verbessern
*Lexc-Dateien für geschlossene Klassen


====
Other Notes
====

Unsere Sprachen sind aktuell sje, sjd, sms, kpv; wir nehmen als Beispiel nur eine Sprache

Korp (textbasiert)
*Göteborg
*GT
*Sprachrat DK (intern)

Korp (multimodal)
*Finnland
**sie benutzen ELAN
**https://korp.csc.fi/

http://metashare.nb.no/repository/browse/norwegian-bokmal-north-saami-translation-memory/a8eab8fa58d611e2ba24001708556d5ae14e31c15b964f3d99590c50f9b4a95b/

Metadaten-Editor 
*Arbil (aktuell noch mit IMDI)
*CMDI-Maker ("Arbil für Dummies")
*Bergen: Paul Meurers Werkzeug
*Prag: Tools dort entwickelt

