fstcompile --isymbols=syms.txt --osymbols=syms.txt  misto2numerico.txt | fstarcsort > misto2numerico.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  misto2numerico.txt | fstarcsort > Testes/misto2numerico.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait misto2numerico.fst| dot -Tpdf  > misto2numerico.pdf