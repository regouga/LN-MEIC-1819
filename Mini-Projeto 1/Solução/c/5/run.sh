fstcompile --isymbols=syms.txt --osymbols=syms.txt  dia.txt | fstarcsort > dia.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait dia.fst| dot -Tpdf  > dia.pdf