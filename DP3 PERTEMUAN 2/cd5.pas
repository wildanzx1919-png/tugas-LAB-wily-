program latihan5;
uses crt;
var
a,b : boolean;

begin
    clrscr;
    a:= true;
    b:= false;

    writeln('a And b: ', a and b);
    writeln ('a Or b: ', a or b);
    writeln (' not b: ', not b);
    writeln ('a Xor b: ', a xor b);
end.