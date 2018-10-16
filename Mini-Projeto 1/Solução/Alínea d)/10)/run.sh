fstcompile --isymbols=syms.txt --osymbols=syms.txt  data2texto.txt | fstarcsort > data2texto.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait data2texto.fst| dot -Tpdf  > data2texto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > teste1.fst
fstcompose teste1.fst data2texto.fst > teste1resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste1resultado.fst | dot -Tpdf > teste1resultado.pdf
