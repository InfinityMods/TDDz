BEGIN ~BENDALIS~

IF ~~ THEN BEGIN 0 // from: PHLYDIA:1.0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @7
  IF ~~ THEN EXTERN ~FIREBEAD~ 2
END

IF ~~ THEN BEGIN 4 // from: PHLYDIA:2.0
  SAY @8
  IF ~~ THEN DO ~ActionOverride("phlydia",EscapeArea())
ActionOverride("karan02",EscapeArea())
ActionOverride("bendalis",EscapeArea())
ActionOverride("firebead",EscapeArea())
ActionOverride("tethtori",EscapeArea())~ EXIT
END
