program Automat;
  (* Endlicher Automat mit delta: Zustand x Eingabe -> Zustand.
   *  - Ueberprueft, ob ein eingegebener Binaerstring durch 3
   *    teilbar ist.
   *  - Syntaktisch korrekte Eingabe wird vorausgesetzt.
   *  - Zeichen '0' und '1' werden umgewandelt in Integer 0 und 1.
   *
   * 2017-01-03 (kb)
   *)
var
 c: char;                                   (* Eingabezeichen     *)
 d: array [0..2,0..1] of integer = ((0,1),  (* Ueberfuehrungsfkt. *)
                                    (2,0),
                                    (1,2));
 s:  integer;                               (* aktueller Zustand  *)
begin
  s:=0;                                     (* Startzustand       *)
  while not Eoln do begin
    read(c);                                (* naechstes Zeichen  *)
    s:=d[s,Ord(c)-Ord('0')]                 (* delta anwenden     *)
  end;
  if (s=0) then                             (* Endzustand pruefen *)
    writeLn('Eingabe ist durch 3 teilbar.')
  else
    writeLn('Eingabe ist NICHT durch 3 teilbar.')
end.
