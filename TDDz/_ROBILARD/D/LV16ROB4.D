BEGIN ~LV16ROB4~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN DO ~ActionOverride("lv16rob1",Enemy())
ActionOverride("lv16rob2",Enemy())
ActionOverride("lv16rob3",Enemy())
ActionOverride("lv16rob4",Enemy())~ EXIT
END
