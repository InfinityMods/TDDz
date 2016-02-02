BEGIN ~GRAZZT01~

IF ~!Allegiance(Myself,ENEMY)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @5 
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @6
  IF ~~ THEN REPLY @7 DO ~SetGlobal("tz_grazztmeeting","GLOBAL",4)~ EXIT
  IF ~~ THEN REPLY @8 DO ~SetGlobal("tz_grazztmeeting","GLOBAL",4)~ EXIT
END
