ensure_path(TEXINPUTS, './include//', './external', './appendix', './chapter', './addon');
ensure_path(BIBINPUTS, '../bibliography');
$pdflatex="pdflatex -shell-escape %O %S";
$out_dir = 'build';
$pdf_mode = 1;
