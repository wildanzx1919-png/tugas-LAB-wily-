program Tugas3;
uses crt;
var
  suhu: real;
begin
clrscr;
  write('Masukkan suhu: ');
  readln(suhu);

  if suhu < 36 then
    writeln('Suhu Rendah')
  else if suhu > 37.5 then
    writeln('Demam')
  else
    writeln('Suhu Normal');
end.