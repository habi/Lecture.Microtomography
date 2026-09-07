require './perl/gitinfo2.pm';

@default_files = (
    'XRayMicroTomography.Handout.tex',
    'XRayMicroTomography.Notes.tex',
    'XRayMicroTomography.Presentation.tex',
    'XRayMicroTomography.SelfTestQuestions.tex',
);

$pdf_mode = 4;  # LuaLaTeX
$lualatex = 'lualatex -halt-on-error %O %S';
$pdf_previewer = 'start zathura';
