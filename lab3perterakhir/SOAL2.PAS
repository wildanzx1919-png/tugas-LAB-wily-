program NilaiTerbesar;
uses crt;
var
  A, B, C, Max : real;

procedure CariTerbesar(X, Y, Z : real; var M : real);
begin
  M := X;
  if Y > M then M := Y;
  if Z > M then M := Z;
end;

begin
  clrscr;
  write('Nilai 1: '); readln(A);
  write('Nilai 2: '); readln(B);
  write('Nilai 3: '); readln(C);
  CariTerbesar(A, B, C, Max);
  writeln('Nilai terbesar: ', Max:0:2);
  readln;
end.