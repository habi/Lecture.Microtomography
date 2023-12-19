@default_excluded_files = ( '*Slides.tex' );
# use pdflatex by default, so you don't need to pass `-pdf` argument
$pdf_mode= 1;
# -synctex=1 allow easy jumps between latex source and pdf file
# -file-line-error make latex report file and line number when there is an error
$pdflatex= 'pdflatex -synctex=1 -file-line-error %O %S';
# https://tex.stackexchange.com/a/83386/828
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml tex.bak bbl bcf fdb_latexmk run tdo %R-blx.bib snm nav'
