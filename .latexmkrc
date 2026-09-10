@default_excluded_files = ( '*Slides.tex' );
# use lualatex by default to avoid TeX memory issues in animation-heavy documents
$pdf_mode= 4;
# -synctex=1 allow easy jumps between latex source and pdf file
# -file-line-error make latex report file and line number when there is an error
$lualatex= 'lualatex -synctex=1 -file-line-error -halt-on-error %O %S';
# https://tex.stackexchange.com/a/83386/828
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml tex.bak bbl bcf fdb_latexmk run tdo %R-blx.bib snm nav'
