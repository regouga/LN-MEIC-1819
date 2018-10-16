fstcompile --isymbols=syms.txt --osymbols=syms.txt  mes.txt | fstarcsort > mes.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait mes.fst| dot -Tpdf  > mes.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > teste1.fst
fstcompose teste1.fst mes.fst > teste1resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste1resultado.fst | dot -Tpdf > teste1resultado.pdf
