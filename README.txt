Serbian Cyrillic and Latin language models for libtextcat

Copyright (c) 2010  Goran Rakic <grakic@devbase.net>


libtextcat is a free software n-gram based language guessing library. Please
go to http://software.wise-guys.nl/libtextcat/ for source and documentation.

Models are generated from a collection of texts from the Serbian Wikipedia as
saved in serbian.txt using text_cat Perl script by Gertjan van Noord from
http://odur.let.rug.nl/~vannoord/TextCat/

UTF-8 language models are ready for use with a patched libtextcat 2.2 with a
patch available in OpenOffice.org source tree: libtextcat/libtextcat-2.2.patch

ISO-8859-2 and ISO-8859-5 language models can be used with original TextCat and
libtextcat or compatible. Please note that UTF-8 language models will not work
with a non-patched libtextcat because it does not work with multibyte encodings.


Usage example:

$ ./libtextcat-2.2-patched/src/testtextcat 
TextCat 2.2 (out of place)
Zdravo svete
Result == [serbian-Latn][serbian-Latn-iso8859-2]
That took 0 ms.

goran@limun:~/Projects/dict-sr/textcat-sr$ ./libtextcat-2.2-patched/src/testtextcat 
TextCat 2.2 (out of place)
Здраво свете
Result == [serbian]
That took 0 ms.


License:

Serbian language models are released under disjunctive tri-licence GNU
LGPL version 2.1 or later / MPL version 1.1 or later / GNU GPL version 2 or
later giving you the choice of one of the three sets of free software licensing
terms. You can also use the under the terms of Creative Commons BY-SA 3.0
Unpored licence.
