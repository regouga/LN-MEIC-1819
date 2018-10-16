fstcompile --isymbols=syms.txt --osymbols=syms.txt  numerico2texto.txt | fstarcsort > numerico2texto.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  numerico2texto.txt | fstarcsort > Testes/numerico2texto.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait numerico2texto.fst| dot -Tpdf  > numerico2texto.pdf