PROGRAM rekursi_prosedur;
USES winCRT;
VAR
  I : INTEGER;

PROCEDURE rekursi;
BEGIN
  WRITELN(I, '.PASCAL');
  I := I + 1;
  IF I <= 10 THEN rekursi;
END;

Begin
  I := 1;
  rekursi;
end.