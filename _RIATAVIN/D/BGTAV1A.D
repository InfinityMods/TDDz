BEGIN ~BGTAV1A~

IF ~!Allegiance(Myself,ENEMY)
Gender(LastTalkedToBy,FEMALE)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY @3
  IF ~~ THEN EXIT
END

IF ~!Allegiance(Myself,ENEMY)
Gender(LastTalkedToBy,MALE)~ THEN BEGIN 2
  SAY @4
  IF ~~ THEN REPLY @5 EXIT
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY @3
  IF ~~ THEN EXIT
END
