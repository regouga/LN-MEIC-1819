fstcompile --isymbols=syms.txt --osymbols=syms.txt 83530_misto.txt | fstarcsort > 83530_misto.fst
fstcompose 83530_misto.fst misto2texto.fst > 83530_misto2texto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83530_misto2texto.fst | dot -Tpdf > 83530_misto2texto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt 83537_misto.txt | fstarcsort > 83537_misto.fst
fstcompose 83537_misto.fst misto2texto.fst > 83537_misto2texto.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83537_misto2texto.fst | dot -Tpdf > 83537_misto2texto.pdf