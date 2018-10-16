fstcompile --isymbols=syms.txt --osymbols=syms.txt  ../mmm2mm.txt | fstarcsort > mmm2mm.fst

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste1.txt | fstarcsort > 83530_mmm2mm.fst
fstcompose 83530_mmm2mm.fst mmm2mm.fst > 83530_mmm2mm_res.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83530_mmm2mm_res.fst | dot -Tpdf > 83530_mmm2mm_res.pdf

fstcompile --isymbols=syms.txt --osymbols=syms.txt teste2.txt | fstarcsort > 83537_mmm2mm.fst
fstcompose 83537_mmm2mm.fst mmm2mm.fst > 83537_mmm2mm_res.fst
fstdraw --isymbols=syms.txt --osymbols=syms.txt --portrait 83537_mmm2mm_res.fst | dot -Tpdf > 83537_mmm2mm_res.pdf