program InputNamaKelasUmur;
uses crt;

var
  nama: string;
  kelas: string;
  umur: integer;

begin
  clrscr;
  writeln('=== PROGRAM BIODATA SEDERHANA ===');
  
  { Meminta input dari pengguna }
  write('Masukkan Nama Anda  : '); 
  readln(nama);
  
  write('Masukkan Kelas Anda : '); 
  readln(kelas);
  
  write('Masukkan Umur Anda  : '); 
  readln(umur);
  
  { Menampilkan hasil input }
  writeln;
  writeln('---------------------------------');
  writeln('DATA ANDA:');
  writeln('Nama  : ', nama);
  writeln('Kelas : ', kelas);
  writeln('Umur  : ', umur, ' tahun');
  
  readln;
end.

