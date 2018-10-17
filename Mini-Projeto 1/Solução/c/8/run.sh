fstcompile --isymbols=syms.txt --osymbols=syms.txt  barra.txt | fstarcsort > barra.fst
fstconcat dia.fst barra.fst > dia_barra.fst
fstconcat dia_barra.fst mes.fst > mes_sembarra.fst
fstconcat mes_sembarra.fst barra.fst > mes_barra.fst
fstconcat mes_barra.fst ano.fst > numerico2texto.fst
fstconcat mes_barra.fst ano.fst > Testes/numerico2texto.fst
rm dia_barra.fst
rm mes_sembarra.fst
rm mes_barra.fst
rm dia.fst
rm mes.fst
rm ano.fst
cp numerico2texto.fst ../../d/10
fstdraw    --isymbols=syms.txt --osymbols=syms.txt --portrait numerico2texto.fst| dot -Tpdf  > numerico2texto.pdf