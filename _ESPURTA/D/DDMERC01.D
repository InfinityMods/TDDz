BEGIN ~DDMERC01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 3.0 1.0
  SAY @4
  IF ~~ THEN DO ~SetGlobal("tz_party_knows_eshpurta","GLOBAL",0)
RevealAreaOnMap("DD1800")
EscapeAreaDestroy(20)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @5
  IF ~~ THEN GOTO 2
END
