fstcompile --isymbols=syms.txt --osymbols=syms.txt  dia.txt | fstarcsort > dia.fst
cp dia.fst ../8/
cp dia.fst ../../d/9
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait dia.fst| dot -Tpdf  > dia.pdf