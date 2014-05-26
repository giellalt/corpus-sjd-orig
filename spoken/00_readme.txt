=====
Intro
=====

"spoken" is a new dir, created for (transcribed) spoken language data stored at freecorpus by the Freiburg-based language documentation projects (Techdoc: http://giellatekno.uit.no/doc/freiburg/freiburg.html).

Annotations written by us in ELAN include minimally an orthographic tier and one translation into the local lingua franca, these data could perhaps also be used as parallel corpora (Techdoc: http://giellatekno.uit.no/doc/freiburg/ELAN.html)

The present folder includes ELAN example data for testing a pipeline between the multimedia archive at TLA and the corpus infrastructure at GT. Only the .eaf-files (the annotations) are stored at GT. The original audio/video files (available from The Language Archive (e.g. http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1737337%23 or http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1566753%23) are not relevant here, but can always be linked back to the ELAN-annotations.

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
TODO (for the GT-part [Tromsø])
=====

Our aim is to overcome manual annotation of our recordings, but instead use computational tools, like Giellatekno's FST analyzers.

==> We need a pipeline for:
==> 1) running the morphological analyzis on the text transcribed in ELAN
==> 2) bringing the resulting analyzed and glossed word forms back into the ELAN structure

The relevant tier for the analyzer is the tier called "word" (including the utterance devided into tokens). 

First, we create copy of "word" called "morph". The analyzed forms should be merged into this new tier. E.g. a Kildin form та̄лэсьт should be written in the tier "morph" as:
*та̄лл+N+Sg+Loc

Disambiguation is not important now. E.g. the ambigue form та̄л will be analyzed as:
*та̄лл+N+Sg+Gen
and
*та̄лл+N+Pl+Nom

=====
TODO (later)
=====

It might be useful to split the result of the analysis into three separate tiers (instead of presenting them in linerar order):
*lemma
*pos
*morph

E.g. та̄лэсьт:
*(lemma) та̄лл
*(pos) N
*(morph) Sg+Loc
