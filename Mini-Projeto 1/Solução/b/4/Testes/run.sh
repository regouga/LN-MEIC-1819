fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../pt2en.txt | fstarcsort > pt2en.fst

fstcompile --isymbols=syms.txt --osymbols=syms.txt 83530_pt.txt | fstarcsort > 83530_pt.fst
fstcompose 83530_pt.fst pt2en.fst > 83530_pt2en.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83530_pt2en.fst | dot -Tpdf > 83530_pt2en.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt 83537_pt.txt | fstarcsort > 83537_pt.fst
fstcompose 83537_pt.fst pt2en.fst > 83537_pt2en.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83537_pt2en.fst | dot -Tpdf > 83537_pt2en.pdf