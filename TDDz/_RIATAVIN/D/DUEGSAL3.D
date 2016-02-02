BEGIN ~DUEGSAL3~

IF ~!Allegiance(Myself,ENEMY)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 DO ~StartStore("duegsal3",LastTalkedToBy())~ EXIT
END
