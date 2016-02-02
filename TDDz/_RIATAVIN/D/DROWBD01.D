BEGIN ~DROWBD01~

IF ~NumTimesTalkedTo(0)
InParty("viconia")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @4
  IF ~~ THEN DO ~ActionOverride("Drowbd01",Enemy())
ActionOverride("Drowbd02",Enemy())
ActionOverride("Drowbd03",Enemy())
ActionOverride("Drowbd04",Enemy())
ActionOverride("Drowbd05",Enemy())
ActionOverride("Drowbd06",Enemy())
ActionOverride("Drowbd07",Enemy())
ActionOverride("Drowbd08",Enemy())
ActionOverride("Drowbd09",Enemy())
ActionOverride("Drowbd10",Enemy())
ActionOverride("Drowbd11",Enemy())~ EXIT
END

IF ~NumTimesTalkedTo(0)
!InParty("viconia")
InParty("jaheira")~ THEN BEGIN 3
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN DO ~ActionOverride("Drowbd01",Enemy())
ActionOverride("Drowbd02",Enemy())
ActionOverride("Drowbd03",Enemy())
ActionOverride("Drowbd04",Enemy())
ActionOverride("Drowbd05",Enemy())
ActionOverride("Drowbd06",Enemy())
ActionOverride("Drowbd07",Enemy())
ActionOverride("Drowbd08",Enemy())
ActionOverride("Drowbd09",Enemy())
ActionOverride("Drowbd10",Enemy())
ActionOverride("Drowbd11",Enemy())~ EXIT
END

IF ~!InParty("viconia")
!InParty("jaheira")
NumTimesTalkedTo(0)~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN DO ~ActionOverride("Drowbd01",Enemy())
ActionOverride("Drowbd02",Enemy())
ActionOverride("Drowbd03",Enemy())
ActionOverride("Drowbd04",Enemy())
ActionOverride("Drowbd05",Enemy())
ActionOverride("Drowbd06",Enemy())
ActionOverride("Drowbd07",Enemy())
ActionOverride("Drowbd08",Enemy())
ActionOverride("Drowbd09",Enemy())
ActionOverride("Drowbd10",Enemy())
ActionOverride("Drowbd11",Enemy())~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY @12
  IF ~~ THEN DO ~ActionOverride("Drowbd01",Enemy())
ActionOverride("Drowbd02",Enemy())
ActionOverride("Drowbd03",Enemy())
ActionOverride("Drowbd04",Enemy())
ActionOverride("Drowbd05",Enemy())
ActionOverride("Drowbd06",Enemy())
ActionOverride("Drowbd07",Enemy())
ActionOverride("Drowbd08",Enemy())
ActionOverride("Drowbd09",Enemy())
ActionOverride("Drowbd10",Enemy())
ActionOverride("Drowbd11",Enemy())~ EXIT
END
