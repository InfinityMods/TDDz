BEGIN ~3334TAV~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 EXIT
  IF ~~ THEN REPLY @2 DO ~StartStore("3334tav",LastTalkedToBy())~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 DO ~StartStore("3334tav",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @5 EXIT
END
