BEGIN ~ENDEDROB~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 4
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN REPLY @12 DO ~AddXPObject("robilard",300000)
GiveItemCreate("scrx62",Player1,0,0,0)
GiveItemCreate("scrx61",Player1,0,0,0)
GiveItemCreate("iounx9",Player1,0,0,0)~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @13
  IF ~~ THEN REPLY @12 DO ~AddXPObject("robilard",300000)
GiveItemCreate("scrx62",Player1,0,0,0)
GiveItemCreate("scrx61",Player1,0,0,0)
GiveItemCreate("iounx9",Player1,0,0,0)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @14
  IF ~~ THEN EXIT
END
