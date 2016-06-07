all: tcp.tex
	xelatex -shell-escape -8bit tcp.tex
	xelatex -shell-escape -8bit tcp.tex

.PHONY:clean
clean:
	rm -f *.aux *.log *.out  *.toc *.maf *.mtc* 
	rm -rf *minted*
