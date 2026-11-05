program HitungLuasPersegiPanjang;
uses crt;

var
  panjang, lebar, luas: integer;

begin
  clrscr;
  
  { Input nilai panjang dan lebar }
  write('panjang: ');
  readln(panjang);
  
  write('lebar: ');
  readln(lebar);
  
  { Proses penghitungan luas }
  luas := panjang * lebar;
  
  { Menampilkan hasil }
  writeln('luas ', luas);
  
  readln;
end.
 

 