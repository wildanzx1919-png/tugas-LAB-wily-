program pertemuan3;
uses crt;

var
uts,uas,na : real ;
poin : char;

begin
    clrscr;
    write ('berapa nilai uts : ');
    readln (uts);

    write ('berapa niai Uas :');
    readln(uas);

    na := 0.4 * uts + 0.6 * uas ;

    if (na >= 80)then
    
    poin := 'A';
    

    writeln;
    writeln('nilai akhir : ' , na:0:2);
    writeln('poin : ' ,poin);


end.