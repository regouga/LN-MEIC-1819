fstcompile --isymbols=syms.txt --osymbols=syms.txt 83530_numerico.txt | fstarcsort > 83530_numerico.fst
fstcompose 83530_numerico.fst numerico2texto.fst > 83530_numerico2texto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83530_numerico2texto.fst | dot -Tpdf > 83530_numerico2texto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt 83537_numerico.txt | fstarcsort > 83537_numerico.fst
fstcompose 83537_numerico.fst numerico2texto.fst > 83537_numerico2texto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83537_numerico2texto.fst | dot -Tpdf > 83537_numerico2texto.pdf