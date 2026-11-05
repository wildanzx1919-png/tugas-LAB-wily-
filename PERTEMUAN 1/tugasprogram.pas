program sapa;
uses crt;
var
nama,asal : string ;

begin
clrscr;
   write ('nama kamu siapa? ');
   readln(nama);
   write ('asal kamu dari mana? ');
   readln (asal);
   writeln('halo ',nama,' kamu berasal dari ' ,asal, ' senang berkenalan denganmu');
end.
