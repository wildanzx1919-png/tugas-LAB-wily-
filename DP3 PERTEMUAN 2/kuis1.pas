program menghitung;
uses crt;
var
nama_mahasiswa : string;
uang_awal ,harga_makanan, harga_minuman, total_pengeluaran, sisa_uang: integer;

begin
clrscr;

write('masukkan nama mahasiswa: ');
readln(nama_mahasiswa);
write('uang awal: ');
readln(uang_awal);
write('harga makanan: ');
readln(harga_makanan);
write('harga minuman: ');
readln(harga_minuman);

    total_pengeluaran := harga_makanan+harga_minuman;
    sisa_uang := uang_awal-total_pengeluaran;

    
    writeln('nama_mahasiswa: ', nama_mahasiswa );
    writeln('total_pengeluaran: ', total_pengeluaran );
    writeln('sisa_uang: ', sisa_uang );
    readln;
    
 end.
