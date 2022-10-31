ensure_path(TEXINPUTS, './misc//', './external', './appendix', './chapter');
ensure_path(BIBINPUTS, './bibliography');
ensure_path(BSTINPUTS, './external');
$pdflatex="pdflatex -shell-escape %O %S";
$out_dir = 'build';
$pdf_mode = 1;
