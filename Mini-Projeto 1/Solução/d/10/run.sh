fstunion misto2texto.fst numerico2texto.fst > data2texto.fst
fstunion misto2texto.fst numerico2texto.fst > Testes/data2texto.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait data2texto.fst| dot -Tpdf  > data2texto.pdf