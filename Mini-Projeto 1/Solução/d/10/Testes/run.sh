fstcompile --isymbols=syms.txt --osymbols=syms.txt 83530_misto.txt | fstarcsort > 83530_misto.fst
fstcompose 83530_misto.fst data2texto.fst > 83530_data2texto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83530_data2texto.fst | dot -Tpdf > 83530_data2texto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt 83537_numerico.txt | fstarcsort > 83537_numerico.fst
fstcompose 83537_numerico.fst data2texto.fst > 83537_data2texto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83537_data2texto.fst | dot -Tpdf > 83537_data2texto.pdf