program record2;
uses crt;

type 
        data = record
            nama : string;
            nim : string;
            kom : char;
        end;

var 
mahasiswa, mahasiswa1 : data;


begin 
clrscr;

    with mahasiswa do 
    begin 
        nama := 'wily';
        nim := '261401032';
        kom :='B';

        writeln ('Nama : ', nama);
        writeln ('Nim : ', nim);
        writeln ('kom : ', kom);

    end;
writeln;
    with mahasiswa1 do 
    begin 
        nama := 'WILDAN';
        nim := '261401032';
        kom :='B';

        writeln ('Nama : ', nama);
        writeln ('Nim : ', nim);
        writeln ('kom : ', kom);
    end;
end.