fstcompile --isymbols=syms.txt --osymbols=syms.txt  dia.txt | fstarcsort > dia.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait dia.fst| dot -Tpdf  > dia.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > teste1.fst
fstcompose teste1.fst dia.fst > teste1resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste1resultado.fst | dot -Tpdf > teste1resultado.pdf
