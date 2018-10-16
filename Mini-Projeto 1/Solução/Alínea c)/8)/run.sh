fstcompile --isymbols=syms.txt --osymbols=syms.txt  numerico2texto.txt | fstarcsort > numerico2texto.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait numerico2texto.fst| dot -Tpdf  > numerico2texto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > teste1.fst
fstcompose teste1.fst numerico2texto.fst > teste1resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste1resultado.fst | dot -Tpdf > teste1resultado.pdf
