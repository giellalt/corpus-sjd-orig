=====
Intro
=====

"spoken" is a new dir, created for (transcribed) spoken language data stored at freecorpus by the Freiburg-based language documentation projects.

.eaf is the name extension for ELAN files, which we produce in our projects. These are basically XML files (and can be opened as such), but they can also be read by the program ELAN.

The GUI programm ELAN time aligns text annotations to audio/video, it can be used for creating and presenting time aligned text annotations of multimedia data. ELAN has also built-in a corpus search tool, incl. regex, cross-tier, and cross-corpus (across multiple ELAN-files) search functionality. For ELAN files stored at the archive in Nijmegen, the corpus functionality works also online.

ELAN is used by very many language documentation projects, like in DOBES, HRELP and other such programs. ELAN is also the annotation and presentation software used by the Freiburg-based Pite Saami, Kola Saami and Izhva-Komi Documentation Projects. Since the text annotations written by us in ELAN include minimally an orthographic tier and one translation into the local lingua franca, these data could perhaps also be used as parallel corpora.

ELAN is documented and can be downloaded here:
*http://tla.mpi.nl/tools/tla-tools/elan/

The present folder includes ELAN example data for testing a pipeline between the multimedia archive at TLA and the corpus infrastructure at GT. Only the .eaf-files (the annotations) are stored at GT. The original audio/video files (available from The Language Archive, e.g. http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1737337%23 or http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1566753%23) are not relevant here, but can always be linked back to the ELAN-annotations.

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
TODO (for the ELAN-part [Freiburg])
=====

In Freiburg, we have worked out a common tier structure for all of our ELAN files (across the Pite and Kola Saami as well as Izhva-Komi projects).

Also special conventions for representing characteristics of spoken language (not occuring in the other GT corpora), like false starts, hesitations, etc. are (already or will be) conventionalized. 

These conventions are now checked and adjusted if neccessary. A proper documentation for this will also be started soon.

=====
TODO (for the GT-part [Tromsø])
=====

Our aim is to overcome manual annotation of our recordings, but instead use computational tools, like the fst analyzers.

==> We need a pipeline for:
==> 1) running the morphological analyzis on the text transcribed in ELAN
==> 2) bringing the resulting analyzed and glossed word forms back into the ELAN structure

The relevant tier for the analyzer is the tier called "word" (including the utterance devided into tokens), which is copied into the tier "morph", into which the analyzed forms should be merged.

E.g. a Kildin form та̄лэсьт should be written in the tier "morph" as:
*та̄лл+N+Sg+Loc

Disambiguation is not important now. The ambigue form та̄л should be written as:
*та̄лл+N+Sg+Gen
*та̄лл+N+Pl+Nom

=====
TODO LATER (perhaps)
=====

It might be usefull to split the result of the analysis into three separate tiers (instead of presenting them in linerar order):
*lemma
*pos
*morph

E.g. та̄лэсьт:
*(lemma) та̄лл
*(pos) N
*(morph) Sg+Loc
