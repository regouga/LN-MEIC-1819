fstcompile --isymbols=syms.txt --osymbols=syms.txt  ano.txt | fstarcsort > ano.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait ano.fst| dot -Tpdf  > ano.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > teste1.fst
fstcompose teste1.fst ano.fst > teste1resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste1resultado.fst | dot -Tpdf > teste1resultado.pdf
