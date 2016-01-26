BEGIN ~SACORC01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 4
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 5
  IF ~~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @6
  IF ~~ THEN DO ~ActionOverride("sacorc01",Enemy())
ActionOverride("sacorc02",Enemy())
ActionOverride("sacorc03",Enemy())
ActionOverride("sacorc04",Enemy())
ActionOverride("sacorc05",Enemy())
ActionOverride("sacorc06",Enemy())
ActionOverride("sacorc07",Enemy())
ActionOverride("sacorc08",Enemy())
ActionOverride("sacorc09",Enemy())
ActionOverride("sacorc10",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY @7
  IF ~~ THEN DO ~ActionOverride("sacorc01",Enemy())
ActionOverride("sacorc02",Enemy())
ActionOverride("sacorc03",Enemy())
ActionOverride("sacorc04",Enemy())
ActionOverride("sacorc05",Enemy())
ActionOverride("sacorc06",Enemy())
ActionOverride("sacorc07",Enemy())
ActionOverride("sacorc08",Enemy())
ActionOverride("sacorc09",Enemy())
ActionOverride("sacorc10",Enemy())~ EXIT

END
