fstcompile --isymbols=syms.txt --osymbols=syms.txt  mes.txt | fstarcsort > mes.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  mes.txt | fstarcsort > Testes/mes.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait mes.fst| dot -Tpdf  > mes.pdf