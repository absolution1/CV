#!/bin/bash

echo "THIS CURRENTLY ALSO SCRAPES A. D. BRAILSFORD PAPER, REMOVE IT MANUALLY!"
curl 'https://inspirehep.net/search?p=f+a+d+brailsford&of=hx&em=B&sf=year&so=d&rg=250' > new_publications.bib
perl -i -pe 's/<\/?\w+>//g;s/<[^<]+pagebody[^>]+>//g' new_publications.bib
