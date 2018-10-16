fstcompile --isymbols=syms.txt --osymbols=syms.txt  misto2texto.txt | fstarcsort > misto2texto.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  misto2texto.txt | fstarcsort > Testes/misto2texto.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait misto2texto.fst| dot -Tpdf  > misto2texto.pdf