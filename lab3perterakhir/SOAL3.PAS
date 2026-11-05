program TukarVariabel;
uses crt;
var
  A, B : integer;

procedure Tukar(var X, Y : integer);
var
  Temp : integer;
begin
  Temp := X;
  X := Y;
  Y := Temp;
end;

begin
  clrscr;
  write('Masukkan A: '); readln(A);
  write('Masukkan B: '); readln(B);
  writeln('Sebelum tukar -> A = ', A, ' B = ', B);
  Tukar(A, B);
  writeln('Sesudah tukar -> A = ', A, ' B = ', B);
  readln;
end.