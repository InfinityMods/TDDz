BEGIN ~ROBRAD05~

IF ~True()~ THEN BEGIN 0
  SAY @999992
  IF ~~ THEN REPLY @999993 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @999994
  IF ~~ THEN REPLY @999995 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @999996
  IF ~~ THEN DO ~ActionOverride("robrad01",Enemy())
ActionOverride("robrad02",Enemy())
ActionOverride("robrad03",Enemy())
ActionOverride("robrad04",Enemy())~ EXIT
END
