BEGIN ~BARB3~

IF ~!Allegiance(Myself,ENEMY)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @2
  IF ~~ THEN REPLY @3 DO ~SetGlobal("tz_eightdead","GLOBAL",2)
StartCutSceneMode()
StartCutScene("barcut01")~ EXIT
  IF ~~ THEN REPLY @4 DO ~SetGlobal("tz_eightdead","GLOBAL",2)
StartCutSceneMode()
StartCutScene("barcut01")~ EXIT
END
