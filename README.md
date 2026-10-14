# ECOLM_baroque
A collection of music from the period c1660-1750 from sources in lute tablature encoded in machine-readable formats

This originated as downloads from two main online resources: a) Fandango - Jean-Daniel Forget's luthbaroque.fr web-site and b) IMSLP - the IMSLP pages devoted to the music of Silvius Leopold Weiss (1687-1750) at https://imslp.org/wiki/Category:Weiss,_Sylvius_Leopold

a) The encoded tablature files in luthbaroque.fr (downloadable with wget) are in the compressed Fandango format, .mscz, each containing 1 or more pieces, which luteconv can convert into MEI (and TabCode) or any of its built-in output formats.

b) The Weiss files downloaded from IMSLP include the greater part of the music from the two central sources, the London and Dresden MSS, amounting to the first 52 Sonatas from the Sämtliche Werke edition, a total of 316 pieces, including 53 minuets. These are not tablature files; they are keyboard transcriptions in MuseScore format downloadable as 'Engraving files' in .zip format from the IMSLP website. After the zip files were decompressed, a MuseScore script was run to export each piece as a MusicXml file (.musicxml), wherein the two-stave transcriptions are identified as for 'Piano'. Paul Overell has adapted the MIDI-file transcription method in his luteconv to work on these files to produce a first approximation to the original tablature from the two-stave transcriptions, using the list of tunings given here for each Sonata (weiss_sonatas_tunings_no_quotes.txt). NB All the resulting tablature files require some degree of subsequent editing, mainly adjustment of string/fret positions from the computed positions provided by luteconv.

All the files are saved as MEI (in folders called 'mei') and TabCode (in folders called 'tc').

In most cases, the filenames give some basic identifying metadata. This can mostly be checked against the incipits in slweiss.de by running the script './find_tc.sh <file.tc> <errors>', which looks up a query built from the incipit of a given file in TabCode (with filename extension '.tc') in an index of the tablature incipits from slweiss.de with <errors> non-matching tablature symbols (default = 3). [Not yet tested in GitHub!]

[Due to the complexity of the IMSLP repository, it was necessary first to export the MuseScore files in the IMSLP directory hierarchy (IMSLP_scores); for convenience they have been copied to a simpler hierarchy in a new directory (IMSLP).]
