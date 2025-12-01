# Use locally generated gitinfo: https://github.com/rbarazzutti/gitinfo2-latexmk
do './perl/gitinfo2.pm';
# Exclude slides file from default build: https://tex.stackexchange.com/a/233796
@default_excluded_files = ( '*Slides.tex' );
# use `lualatex` by default, so we don't run into memory errors: https://tex.stackexchange.com/a/356432
$pdf_mode = 4;
# Good clean up with `latexmk -C`: https://tex.stackexchange.com/a/83386/828
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml tex.bak bbl bbl-SAVE-ERROR bcf fdb_latexmk run tdo %R-blx.bib snm nav mkr'
