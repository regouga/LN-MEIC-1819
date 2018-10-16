fstcompile --isymbols=syms.txt --osymbols=syms.txt  pt2en.txt | fstarcsort > pt2en.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  pt2en.txt | fstarcsort > Testes/pt2en.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait pt2en.fst| dot -Tpdf  > pt2en.pdf