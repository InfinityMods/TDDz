BEGIN ~KERIS2~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~ActionOverride("keris2",DestroySelf())
GiveItemCreate("kerisbod",Player1,0,0,0)~ EXIT
  IF ~~ THEN REPLY @2 DO ~ActionOverride("keris2",DestroySelf())
GiveItemCreate("kerisbod",Player1,0,0,0)~ EXIT
END
