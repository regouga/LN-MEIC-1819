fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../en2pt.txt | fstarcsort > en2pt.fst

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > teste1.fst
fstcompose teste1.fst en2pt.fst > teste1resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste1resultado.fst | dot -Tpdf > teste1resultado.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste2.txt | fstarcsort > teste2.fst
fstcompose teste2.fst en2pt.fst > teste2resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste2resultado.fst | dot -Tpdf > teste2resultado.pdf
