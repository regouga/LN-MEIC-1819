fstcompile --isymbols=syms.txt --osymbols=syms.txt  dia.txt | fstarcsort > dia.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  dia.txt | fstarcsort > Testes/dia.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait dia.fst| dot -Tpdf  > dia.pdf