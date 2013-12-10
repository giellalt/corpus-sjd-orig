=====
Intro
=====
.eaf is the name extension for ELAN files, but it is basically an XML file (and can be opened as such).

The programm ELAN links text annotations to audio/video, it can be used both for  creating and presenting time aligned text annotations of multimedia data. ELAN has also built-in a corpus search tool, incl. regex, cross-tier, and cross-corpus (across more than one ELAN-file) search functionality.

ELAN is the annotation and presentation software used by the Pite and Kola Saami and (in the future) Izhva-Komi Dcumentation Projects. Since the text annotations   written by us in ELAN include minimally an orthographic tier and one translation into the local lingua franca, these data can be used as parallel corpora.

ELAN can be downloaded here:
*http://tla.mpi.nl/tools/tla-tools/elan/

The present folder includes ELAN example data for testing a pipeline between the multimedia archive at TLA and the corpus infrastructure at GT. Only the .eaf-files (the annotations) are stored at GT. Here are the original audio/video files:
*http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1737337%23
*http://corpus1.mpi.nl/ds/imdi_browser?openpath=MPI1566753%23

=====
ELAN test files at GT
=====

The current ELAN example files KIL061212AfanasjevaNE_Ryhp_Clip131206 and KIL070421Kudckullj include more tiers than the ones for orthography and translations, see the respective screenshoots. But the tierstructure in both files is different. Relevant for Korp are perhaps only the following tiers:
*ref (reference to the selected utterance)
*orth (orthographic representation)
*pos (parts-of-speech)
*transl (translations into different languages)

The morphsyntactic glossing in the example files is not always very consistant (because it was done manually). Some parts are missing completely.

In KIL070421Kudckullj there is a passage without orthographic transcription because the speaker switched to Russian.

=====
TODO (for the ELAN-part)
=====

Currently, we are working out a common tier structure for all of our ELAN files (across the Pite and Kola Saami as well as Izhva-Komi projects).

Also special conventions for representing characteristics of spoken language (not occuring in the other GT corpora), like false starts, hesitations, etc. are still needed.

??

=====
TODO (for the GT-part)
=====

??

