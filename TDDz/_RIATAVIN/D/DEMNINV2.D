BEGIN ~DEMNINV2~

IF ~True()
Global("tz_drowarty","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0 1.1
  SAY @5
  IF ~~ THEN DO ~SetGlobal("tz_drowarty","GLOBAL",1)~ EXIT
END
