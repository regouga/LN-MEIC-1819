fstcompile --isymbols=syms.txt --osymbols=syms.txt  misto2texto.txt | fstarcsort > misto2texto.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait misto2texto.fst| dot -Tpdf  > misto2texto.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > teste1.fst
fstcompose teste1.fst misto2texto.fst > teste1resultado.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait teste1resultado.fst | dot -Tpdf > teste1resultado.pdf
