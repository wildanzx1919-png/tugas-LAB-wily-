program Quiz2_DuaPointer;

uses crt;

var
  angka : integer;
  p1, p2 : ^integer;

begin
  clrscr;
  angka := 25;

  p1 := @angka;
  p2 := @angka;

  writeln('a. Nilai variabel : ', angka);
  writeln('b. Alamat variabel : ', addr(@angka));
  writeln('c. Nilai yang ditunjuk p1 : ', p1^);
  writeln('   Nilai yang ditunjuk p2 : ', p2^);

  writeln;
  writeln('Ubah lewat p1, p1^ := 50');
  p1^ := 50;

  writeln('Nilai angka sekarang : ', angka);
  writeln('Nilai p1^ sekarang : ', p1^);
  writeln('Nilai p2^ sekarang : ', p2^);
  readln;
end.