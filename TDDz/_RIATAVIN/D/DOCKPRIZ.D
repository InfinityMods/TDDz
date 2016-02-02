BEGIN ~DOCKPRIZ~

IF ~NumTimesTalkedTo(0)
Global("tz_dockgold","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN DO ~SetGlobal("tz_dockgold","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN DO ~SetGlobal("tz_dockgold","GLOBAL",1)~ EXIT
END
