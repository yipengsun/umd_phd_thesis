ensure_path(TEXINPUTS, './include//', './external', './appendix', './chapter', './addon');
ensure_path(BIBINPUTS, '../bibliography//', './bibliography');
$pdflatex="lualatex -shell-escape %O %S";
$out_dir = 'build';
$pdf_mode = 1;
