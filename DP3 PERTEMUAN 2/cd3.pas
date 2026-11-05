program latihan3;
uses crt;
var
a,b : integer;

begin
    clrscr;
    a:= 5;
    b:= 2;

    writeln('a And b: ' , a and b);
    writeln('a Or b: ' , a or b);
    writeln('a Xor b: ' , a xor b);
    writeln('Not a: ' , not a);
    writeln('a shl b: ' , a shl b);
    writeln('a shr b: ' , a shr b);
    

end.