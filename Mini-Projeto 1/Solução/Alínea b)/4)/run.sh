fstcompile --isymbols=syms.txt --osymbols=syms.txt  pt2en.txt | fstarcsort > pt2en.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait pt2en.fst| dot -Tpdf  > pt2en.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > teste1.fst
fstcompose teste1.fst pt2en.fst > teste1resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste1resultado.fst | dot -Tpdf > teste1resultado.pdf
