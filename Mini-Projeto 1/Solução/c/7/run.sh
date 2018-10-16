fstcompile --isymbols=syms.txt --osymbols=syms.txt  ano.txt | fstarcsort > ano.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  ano.txt | fstarcsort > Testes/ano.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ano.fst| dot -Tpdf  > ano.pdf