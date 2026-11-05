program MenuMakanan;
var
  kode: integer;
begin
  writeln('DAFTAR MENU');
  writeln('1. Nasi Goreng 15000');
  writeln('2. Ayam Geprek 18000');
  writeln('3. Mie Ayam 12000');
  writeln('4. Bakso 14000');
  writeln('5. Sate Ayam 20000');
  
  write('Masukkan kode: ');
  readln(kode);

  if kode = 1 then
  begin
    writeln('Anda memilih Nasi Goreng');
    writeln('Harga Rp 15000');
  end
  else if kode = 2 then
  begin
    writeln('Anda memilih Ayam Geprek');
    writeln('Harga Rp 18000');
  end
  else if kode = 3 then
  begin
    writeln('Anda memilih Mie Ayam');
    writeln('Harga Rp 12000');
  end
  else if kode = 4 then
  begin
    writeln('Anda memilih Bakso');
    writeln('Harga Rp 14000');
  end
  else if kode = 5 then
  begin
    writeln('Anda memilih Sate Ayam');
    writeln('Harga Rp 20000');
  end
  else
  begin
    writeln('Kode menu tidak tersedia.');
  end;
end.