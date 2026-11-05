program HitungDuaBilangan;
uses crt;
var
  A, B : real;

procedure Tambah(X, Y : real);
begin
  writeln('Penjumlahan: ', X + Y:0:2);
end;

procedure Kurang(X, Y : real);
begin
  writeln('Pengurangan: ', X - Y:0:2);
end;

procedure Kali(X, Y : real);
begin
  writeln('Perkalian: ', X * Y:0:2);
end;

procedure Bagi(X, Y : real);
begin
  if Y <> 0 then
    writeln('Pembagian: ', X / Y:0:2)
  else
    writeln('Pembagian: Tidak bisa dibagi 0!');
end;

begin
  clrscr;
  write('Masukkan bilangan 1: '); readln(A);
  write('Masukkan bilangan 2: '); readln(B);
  Tambah(A, B);
  Kurang(A, B);
  Kali(A, B);
  Bagi(A, B);
  readln;
end.