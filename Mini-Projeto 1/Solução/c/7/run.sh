fstcompile --isymbols=syms.txt --osymbols=syms.txt  ano.txt | fstarcsort > ano.fst
cp ano.fst ../8/
cp ano.fst ../../d/9
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ano.fst| dot -Tpdf  > ano.pdf