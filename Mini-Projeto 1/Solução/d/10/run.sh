fstcompile --isymbols=syms.txt --osymbols=syms.txt  data2texto.txt | fstarcsort > data2texto.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  data2texto.txt | fstarcsort > Testes/data2texto.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait data2texto.fst| dot -Tpdf  > data2texto.pdf