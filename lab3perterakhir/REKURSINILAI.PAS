program NilaiMahasiswa;
uses crt;
var
  Nama : string;
  Tugas, UTS, UAS, Akhir : real;
  Grade : char;

procedure InputData(var T, U, A : real);
begin
  write('Nilai Tugas: '); readln(T);
  write('Nilai UTS: '); readln(U);
  write('Nilai UAS: '); readln(A);
end;

procedure HitungNilai(T, U, A : real; var H : real);
begin
  H := T * 0.2 + U * 0.3 + A * 0.5;
end;

procedure TentukanGrade(H : real; var G : char);
begin
  if H >= 85 then G := 'A'
  else if H >= 75 then G := 'B'
  else if H >= 65 then G := 'C'
  else if H >= 50 then G := 'D'
  else G := 'E';
end;

procedure ProsesNilai(T, U, A : real; var H : real; var G : char);
begin
  HitungNilai(T, U, A, H);
  TentukanGrade(H, G);
end;

procedure TampilkanHasil(N : string; H : real; G : char);
begin
  writeln('Nama: ', N);
  writeln('Nilai Akhir: ', H:5:2);
  writeln('Grade: ', G);
end;

begin
  clrscr;
  write('Nama mahasiswa: '); readln(Nama);
  InputData(Tugas, UTS, UAS);
  ProsesNilai(Tugas, UTS, UAS, Akhir, Grade);
  TampilkanHasil(Nama, Akhir, Grade);
  readln;
end.