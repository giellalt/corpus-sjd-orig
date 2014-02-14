=====
Intro
=====

"spoken" is a new dir, created for (transcribed) spoken language data stored at freecorpus by the Freiburg based language documentation projects.

.eaf is the name extension for ELAN files, which we produce in our projects. These are basically XML files (and can be opened as such), but they can also be read by the program ELAN.

The GUI programm ELAN time aligns text annotations to audio/video, it can be used for creating and presenting time aligned text annotations of multimedia data. ELAN has also built-in a corpus search tool, incl. regex, cross-tier, and cross-corpus (across multiple ELAN-files) search functionality. For ELAN files stored at the archive in Nijmegen, the corpus functionality works also online.

ELAN is used by very many language documentation projects, like in DOBES, HRELP and other such programs. ELAN is also the annotation and presentation software used by the Freiburg-based Pite Saami, Kola Saami and Izhva-Komi Dcumentation Projects. Since the text annotations written by us in ELAN include minimally an orthographic tier and one translation into the local lingua franca, these data can be used as parallel corpora.

ELAN is documented and can be downloaded here:
*http://tla.mpi.nl/tools/tla-tools/elan/

The present folder includes ELAN example data for testing a pipeline between the multimedia archive at TLA and the corpus infrastructure at GT. Only the .eaf-files (the annotations) are stored at GT. Here are the original audio/video files:
*http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1737337%23
*http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1566753%23

=====
ELAN test files in the present dir
=====

The ELAN example files might include more tiers than the ones relevant for the Freiburg-Tromsø work. Relevant for us are only the following tiers:
*ref (reference to the selected utterance [unique labels are provided automatically by ELAN])
*orth (orthographic representation)
*word (tokenized orth-tier [tokenization can be done automatically in ELAN])
*lemma
*pos
*morph
*ft-XYZ (translations into different languages)

Normally several speakers are transcribed in one ELAN session. Each speaker gets its own ref-tier (and the respective childs in the tier structure). In the teir-names different speakers are differentiated by …@SpeakerXYZ.

See also the respective screenshoots for some of the test ELAN-files. 

Note that the morphosyntactic glossing in the other tiers of the example files is not always very consistent (because it was done manually). 

Some parts of the annotations are also incomplete.

=====
TODO (for the ELAN-part [Freiburg])
=====

In Freiburg, we have worked out a common tier structure for all of our ELAN files (across the Pite and Kola Saami as well as Izhva-Komi projects).

Also special conventions for representing characteristics of spoken language (not occuring in the other GT corpora), like false starts, hesitations, etc. are conventionalized. 

These conventions are now checked and adjested if neccessary. A proper documentation for this will also be started soon.

=====
TODO (for the GT-part [Tromsø])
=====

Our aim is to overcome manual annotation of our recordings, but instead use computational tools, like the fst analyzers.

==> We need a pipeline for:
==> 1) running the morphological analyzis on the text transcribed in ELAN
==> 2) bringing the resulting analyzed and glossed word forms back into the ELAN structure

The relevant tiers for the analyzes are either the tier called "orth" (including whole utterances) or the tier called "word" (including utterances devided into single tokens).

The relevant ELAN tiers, into which the analyzed forms are to be merged are *lemma
*pos
*morph
E.g. a Kildin form та̄лэсьт (та̄лл+N+Sg+Loc) should be represented in the ELAN structure like:
*та̄лл
*N
*Sg Loc
or the (ambigue) form та̄л (та̄лл+N+Sg+Gen | та̄лл+N+Pl+Nom):
*та̄лл
*N
*Sg Loc | Pl Nom
or the like.

Note that we would like to create three different tiers in ELAN, rather than one linear representation with lemma+pos+morph.

=====
TODO (for the ELAN/GT-part [Freiburg/Tromsø])
=====

Once the pipeline described above works, we need to continue writing the fst for the relevant languages.

