program HasilStudiMahasiswa;
uses crt;

type
  TMataKuliah = record
    NamaMK : string;
    SKS : integer;
    NilaiHuruf : string;
    NilaiAngka : real;
  end;

  TMahasiswa = record
    Nama : string;
    NIM : string;
    JmlMK : integer;
    MK : array[1..20] of TMataKuliah;
    TotalSKS : integer;
    TotalBobot : real;
    IP : real;
  end;

var
  Mhs : array[1..50] of TMahasiswa;
  JmlMhs, i, j : integer;

function KonversiNilai(Nilai : string): real;
begin
  if (Nilai = 'A') or (Nilai = 'a') then
    KonversiNilai := 4
  else if (Nilai = 'B+') or (Nilai = 'b+') then
    KonversiNilai := 3.5
  else if (Nilai = 'B') or (Nilai = 'b') then
    KonversiNilai := 3
  else if (Nilai = 'C+') or (Nilai = 'c+') then
    KonversiNilai := 2.5
  else if (Nilai = 'C') or (Nilai = 'c') then
    KonversiNilai := 2
  else if (Nilai = 'D') or (Nilai = 'd') then
    KonversiNilai := 1
  else if (Nilai = 'E') or (Nilai = 'e') then
    KonversiNilai := 0
  else
    KonversiNilai := 0;
end;

begin
  clrscr;
  write('Masukkan jumlah mahasiswa : ');
  readln(JmlMhs);

  { --- INPUT DATA --- }
  for i := 1 to JmlMhs do
  begin
    clrscr;
    writeln('=== Mahasiswa ke-', i, ' ===');
    write('Nama : ');
    readln(Mhs[i].Nama);
    write('NIM  : ');
    readln(Mhs[i].NIM);
    write('Jumlah mata kuliah : ');
    readln(Mhs[i].JmlMK);

    Mhs[i].TotalSKS := 0;
    Mhs[i].TotalBobot := 0;

    for j := 1 to Mhs[i].JmlMK do
    begin
      writeln;
      writeln(' Mata Kuliah ke-', j);
      write('  Nama mata kuliah : ');
      readln(Mhs[i].MK[j].NamaMK);
      write('  Jumlah SKS : ');
      readln(Mhs[i].MK[j].SKS);
      write('  Nilai (A/B+/B/C+/C/D/E) : ');
      readln(Mhs[i].MK[j].NilaiHuruf);

      Mhs[i].MK[j].NilaiAngka := KonversiNilai(Mhs[i].MK[j].NilaiHuruf);
      Mhs[i].TotalSKS := Mhs[i].TotalSKS + Mhs[i].MK[j].SKS;
      Mhs[i].TotalBobot := Mhs[i].TotalBobot + (Mhs[i].MK[j].SKS * Mhs[i].MK[j].NilaiAngka);
    end;

    if Mhs[i].TotalSKS > 0 then
      Mhs[i].IP := Mhs[i].TotalBobot / Mhs[i].TotalSKS
    else
      Mhs[i].IP := 0;
  end;

  { --- TAMPILKAN SATU PER SATU --- }
  for i := 1 to JmlMhs do
  begin
    clrscr;
    writeln('=== HASIL STUDI MAHASISWA ke-', i, ' ===');
    writeln('Nama : ', Mhs[i].Nama);
    writeln('NIM  : ', Mhs[i].NIM);
    writeln('------------------------------------------------');
    writeln('No  Mata Kuliah          SKS  Nilai  Bobot');
    writeln('------------------------------------------------');
    for j := 1 to Mhs[i].JmlMK do
    begin
      writeln(j, '   ', Mhs[i].MK[j].NamaMK, '   ', Mhs[i].MK[j].SKS, '   ', Mhs[i].MK[j].NilaiHuruf, '   ', Mhs[i].MK[j].NilaiAngka:0:1);
    end;
    writeln('------------------------------------------------');
    writeln('Total SKS : ', Mhs[i].TotalSKS);
    writeln('IP        : ', Mhs[i].IP:0:2);
    writeln;
    if i < JmlMhs then
    begin
      writeln('Tekan ENTER untuk lanjut ke mahasiswa berikutnya...');
      readln;
    end
    else
    begin
      writeln('Semua data sudah ditampilkan.');
      readln;
    end;
  end;
end.
