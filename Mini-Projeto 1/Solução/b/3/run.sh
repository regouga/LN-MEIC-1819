fstcompile --isymbols=syms.txt --osymbols=syms.txt  en2pt.txt | fstarcsort > en2pt.fst
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait en2pt.fst| dot -Tpdf  > en2pt.pdf