program DeretFibonacci;
uses crt;

var
  N, i, A, B, C : integer;

begin
  clrscr;
  write('Nilai : ');
  readln(N);

  A := 1;
  B := 1;

  write('Deret Fibonacci : ');
  for i := 1 to N do
  begin
    if i = 1 then
      write(A, ' ')
    else if i = 2 then
      write(B, ' ')
    else
    begin
      C := A + B;
      write(C, ' ');
      A := B;
      B := C;
    end;
  end;
  readln;
end.