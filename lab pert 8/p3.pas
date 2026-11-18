program akses_alamat;
uses crt ;

var
angka: integer;
i : ^word;
ptrangka :^integer;

begin 
clrscr;


angka := 20;
writeln('angkanya: ' , angka);

ptrangka := @angka;
writeln(ptrangka^);

i := addr(ptrangka);
writeln('alamat memorinya : ', i^);

end.
