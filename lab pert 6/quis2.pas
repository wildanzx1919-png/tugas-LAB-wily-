program BilanganPrima;
uses crt;

function Prima(n : integer): boolean;
var
  i : integer;
begin
  Prima := true;
  if n <= 1 then
    Prima := false
  else
    for i := 2 to n div 2 do
      if n mod i = 0 then
        Prima := false;
end;

var
  Angka : integer;

begin
  clrscr;
  write('Angka : ');
  readln(Angka);
  if Prima(Angka) then
    writeln('Prima')
  else
    writeln('Non-Prima');
  readln;
end.