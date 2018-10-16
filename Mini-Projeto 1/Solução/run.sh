# Alinea a, exercicio 1

fstcompile --isymbols=syms.txt --osymbols=syms.txt  mmm2mm.txt | fstarcsort > mmm2mm.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  mmm2mm.txt | fstarcsort > Testes/mmm2mm.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait mmm2mm.fst| dot -Tpdf  > mmm2mm.pdf