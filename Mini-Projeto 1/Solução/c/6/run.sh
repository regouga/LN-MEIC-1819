fstcompile --isymbols=syms.txt --osymbols=syms.txt  mes.txt | fstarcsort > mes.fst
cp mes.fst ../8/
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait mes.fst| dot -Tpdf  > mes.pdf