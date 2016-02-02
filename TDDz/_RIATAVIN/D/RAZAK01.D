BEGIN ~RAZAK01~

IF ~!Allegiance(Myself,ENEMY)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 DO ~StartStore("razak01",LastTalkedToBy())~ EXIT
END
