BEGIN ~3307WIZ~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
  IF ~Global("tz_3307_Quest","DD3307",0)~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN DO ~StartStore("3307wiz",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @8
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @9
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @12
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @16
  IF ~~ THEN REPLY @17 /* #83109 */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @18
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @19
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 14
  IF ~~ THEN REPLY @22 GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @23
  IF ~~ THEN DO ~SetGlobal("tz_3307_Quest","DD3307",1)
GiveItemCreate("keyor",Player1,0,0,0)
GiveItemCreate("keyor2",Player1,0,0,0)
RevealAreaOnMap("DD7000")~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY @23
  IF ~~ THEN DO ~SetGlobal("tz_3307_Quest","DD3307",1)
GiveItemCreate("keyor",Player1,0,0,0)
GiveItemCreate("keyor2",Player1,0,0,0)
RevealAreaOnMap("DD7000")~ EXIT
END
