# Use locally generated gitinfo: https://github.com/rbarazzutti/gitinfo2-latexmk
require './perl/gitinfo2.pm';

# Exclude the slides file from default build: https://tex.stackexchange.com/a/233796
@default_excluded_files = ( 'preamble.tex', '*Slides.tex' );


# use `lualatex` by default, so we don't run into memory errors: https://tex.stackexchange.com/a/356432
# And halt on errors if there are any
$pdf_mode = 4;  # LuaLaTeX
$lualatex = 'lualatex -halt-on-error %O %S';

# Clean *everything* we don't want with `latexmk -C`: https://tex.stackexchange.com/a/83386/828
$clean_ext = 'synctex.gz synctex.gz(busy) run.xml tex.bak bbl bbl-SAVE-ERROR bcf fdb_latexmk run tdo %R-blx.bib snm nav mkr';

# Start zathura when using `latexmk -pvc`. Obviously only works on Linux
$pdf_previewer = 'start zathura';
