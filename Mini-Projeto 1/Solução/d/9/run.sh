fstcompile --isymbols=syms.txt --osymbols=syms.txt  barra.txt | fstarcsort > barra.fst
fstcompile --isymbols=syms.txt --osymbols=syms.txt  mes.txt | fstarcsort > mes.fst
fstconcat dia.fst barra.fst > dia_barra.fst
fstconcat dia_barra.fst mes.fst > mes_sembarra.fst
fstconcat mes_sembarra.fst barra.fst > mes_barra.fst
fstconcat mes_barra.fst ano.fst > misto2texto.fst
fstconcat mes_barra.fst ano.fst > Testes/misto2texto.fst
rm dia_barra.fst
rm mes_sembarra.fst
rm mes_barra.fst
rm dia.fst
rm mes.fst
rm ano.fst
rm barra.fst
cp misto2texto.fst ../10
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait misto2texto.fst| dot -Tpdf  > misto2texto.pdf