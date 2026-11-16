# latexmk configuration: `latexmk` builds main.pdf, `latexmk -pvc` rebuilds on save
$pdf_mode = 1;
@default_files = ('main.tex');
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 %O %S';
$clean_ext = 'synctex.gz run.xml bbl';