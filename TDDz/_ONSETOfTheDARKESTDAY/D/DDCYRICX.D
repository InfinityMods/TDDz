BEGIN ~DDCYRICX~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 3
  IF ~~ THEN REPLY @3 GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @4
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~GiveItemCreate("DDrelic1",Myself,0,0,0)
TriggerActivation("EXITPO30",TRUE)
Kill(Myself)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN DO ~GiveItemCreate("DDrelic1",Myself,0,0,0)
TriggerActivation("EXITPO30",TRUE)
Kill(Myself)~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2
  SAY @8
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @9
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @10
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @11
  IF ~~ THEN DO ~GiveItemCreate("DDrelic1",Myself,0,0,0)
TriggerActivation("EXITPO30",TRUE)
Kill(Myself)~ EXIT
END
