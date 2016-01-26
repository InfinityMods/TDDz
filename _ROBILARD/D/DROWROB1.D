BEGIN ~DROWROB1~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.0
  SAY @3
  IF ~~ THEN DO ~LeaveParty()
DropInventory()
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 1
  IF ~~ THEN REPLY @6 DO ~AddXpObject("robilard",120000)
GiveItemCreate("bmastsw1",Player1,0,0,0)~ EXIT
END
