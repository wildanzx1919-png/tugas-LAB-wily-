program menghitung;
uses crt;
var
nama: string;
nilai_tugas , nilai_uts , nilai_uas, nilai_akhir : real;

begin
clrscr;
    write('masukkan nama mahasiswa: ');
    readln(nama);
    write('masukkan nilai tugas: ');
    readln(nilai_tugas);
    write('masukkan nilai uts: ');
    readln(nilai_uts);
    write('masukkan nilai uas: ');
    readln(nilai_uas);

    nilai_tugas:= nilai_tugas*20/100;
    nilai_uts:= nilai_uts*30/100;
    nilai_uas:= nilai_uas*40/100;
    nilai_akhir:= nilai_tugas+nilai_uts+nilai_uas ;

    writeln('nama mahasiswa: ', nama);
    writeln('nilai akhir: ',  nilai_akhir: 0:2);
    readln;
end.