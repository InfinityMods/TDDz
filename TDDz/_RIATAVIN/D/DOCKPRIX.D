BEGIN ~DOCKPRIX~

IF ~Global("tz_artyinfz","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 6
  IF ~~ THEN REPLY @13 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @18
  IF ~~ THEN DO ~SetGlobal("tz_artyinfz","GLOBAL",1)
RevealAreaOnMap("dd8000")~ EXIT
END
