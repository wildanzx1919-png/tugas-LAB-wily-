program Quiz1_Makanan;

uses crt;

var
  nama  : array[1..10] of string;
  harga : array[1..10] of integer;
  n, i  : integer;
  pMax, pMin : ^integer;
  idxMax, idxMin : integer;

begin
  clrscr;
  write('Mau input berapa makanan? '); 
  readln(n);

  for i := 1 to n do
  begin
    writeln('Makanan ke-', i);
    write('  Nama  : '); 
    readln(nama[i]);
    write('  Harga : '); 
    readln(harga[i]);
  end;

  { pointer awal nunjuk ke data pertama }
  pMax := @harga[1];
  pMin := @harga[1];
  idxMax := 1;
  idxMin := 1;

  for i := 2 to n do
  begin
    if harga[i] > pMax^ then
    begin
      pMax := @harga[i];
      idxMax := i;
    end;
    
    if harga[i] < pMin^ then
    begin
      pMin := @harga[i];
      idxMin := i;
    end;
  end;

  writeln;
  writeln('a. Harga termahal : ', pMax^, ' - ', nama[idxMax]);
  writeln('b. Harga termurah : ', pMin^, ' - ', nama[idxMin]);
  readln;
end.