BEGIN ~BGTAV1B~

IF ~!Allegiance(Myself,ENEMY)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~StartStore("bgtav1B",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN EXIT
END
