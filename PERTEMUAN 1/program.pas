program latihan;
uses crt;
label a;
const g=9.8;
type fuzy=integer;
var
nilai : fuzy;
begin
clrscr;
    write ('masukkan bilangan bulat :');
    read  (nilai);
    readln;
    writeln('ilkom');
    goto a;
    writeln('TI');
    a:
    writeln('USU');
    writeln(nilai);
    writeln(g : 0:2);
    readln;
end.