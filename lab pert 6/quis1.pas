program FaktorialRekursi;
uses crt;

function Faktorial(n : integer): longint;
begin
  if n <= 1 then
    Faktorial := 1
  else
    Faktorial := n * Faktorial(n - 1);
end;

var
  Nilai : integer;

begin
  clrscr;
  write('Nilai : ');
  readln(Nilai);
  writeln('Hasil : ', Faktorial(Nilai));
  readln;
end.