program PerkalianSkip15;
var
  i, hasil: integer;
begin
  for i := 1 to 100 do
  begin
    hasil := i * 1; // perkalian angka 1
    // jika habis dibagi 3 DAN 5, jangan tampilkan
    if (hasil mod 3 = 0) and (hasil mod 5 = 0) then
      continue
    else
      writeln('1 x ', i, ' = ', hasil);
  end;
  readln;
end.