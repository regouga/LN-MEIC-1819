fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../misto2numerico.txt | fstarcsort > misto2numerico.fst

fstcompile --isymbols=syms.txt --osymbols=syms.txt 83530_misto.txt | fstarcsort > 83530_misto.fst
fstcompose 83530_misto.fst misto2numerico.fst > 83530_misto2numerico.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83530_misto2numerico.fst | dot -Tpdf > 83530_misto2numerico.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt 83537_misto.txt | fstarcsort > 83537_misto.fst
fstcompose 83537_misto.fst misto2numerico.fst > 83537_misto2numerico.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83537_misto2numerico.fst | dot -Tpdf > 83537_misto2numerico.pdf
