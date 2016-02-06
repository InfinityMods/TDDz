BEGIN ~DDWARP01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("candwarp")~ EXIT
END
