# Use locally generated gitinfo: https://github.com/rbarazzutti/gitinfo2-latexmk
require './perl/gitinfo2.pm';

@default_files = (
    'XRayMicroTomography.Presentation.tex',
    'XRayMicroTomography.Handout.tex',
    'XRayMicroTomography.Notes.tex',
    'XRayMicroTomography.SelfTestQuestions.tex',
);

# use `lualatex` by default, so we don't run into memory errors: https://tex.stackexchange.com/a/356432
# And halt on errors if there are any
$pdf_mode = 4;  # LuaLaTeX
$lualatex = 'lualatex -halt-on-error %O %S';

# Clean more stuff in addition to our standard ~/.latexmkrc
$clean_ext .= ' mkr nav snm';

# Start zathura when using `latexmk -pvc`. Obviously only works on Linux
$pdf_previewer = 'start zathura';
