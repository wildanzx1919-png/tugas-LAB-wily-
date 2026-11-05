PROGRAM rekursi_prosedur;
USES winCRT;
VAR
  I : INTEGER;

PROCEDURE rekursi;
begin
  I := 1;
  WRITELN(I, '.PASCAL');
  I := I + 1;
  IF I <= 10 THEN rekursi;
End;

begin
  rekursi;
end.