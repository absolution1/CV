.PHONY: clean


CV.pdf: CV.tex
	@rm -f CV.{aux,toc,lof,lot}
	(/Library/TeX/Root/bin/x86_64-darwin/pdflatex CV && /Library/TeX/Root/bin/x86_64-darwin/bibtex CV && /Library/TeX/Root/bin/x86_64-darwin/pdflatex CV && /Library/TeX/Root/bin/x86_64-darwin/pdflatex CV)
	@rm -f CV.{aux,toc,lof,lot}

clean:
	@rm -f CV.pdf CV.log CV.aux
	@rm -f *.bbl *.blg *.lof *.cut
	@rm -f *.lot *.out *.toc
