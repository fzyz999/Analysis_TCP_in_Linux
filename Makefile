all: tcp.tex
	xelatex -shell-escape -8bit tcp.tex
	xelatex -shell-escape -8bit tcp.tex

.PHONY:clean
clean:
	rm *.aux *.log *.out *.pdf *.toc 
	rm -rf _minted-tcp/

