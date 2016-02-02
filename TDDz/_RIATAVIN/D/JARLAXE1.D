BEGIN ~JARLAXE1~

IF ~NumTimesTalkedTo(0)
!Allegiance(Myself,ENEMY)~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2 
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.0
  SAY @10 
  IF ~~ THEN REPLY @11 GOTO 5
  IF ~~ THEN REPLY @12 GOTO 9
END

IF ~~ THEN BEGIN 5 // from: 9.0 4.0
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 5.1
  SAY @18
  IF ~~ THEN REPLY @19 DO ~SetGlobal("tz_jarlaxe1home","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @20
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 5
  IF ~~ THEN REPLY @23 DO ~ActionOverride("drowbd01",Attack([PC]))
ActionOverride("drowbd02",Attack([PC]))
ActionOverride("drowbd03",Attack([PC]))
ActionOverride("drowbd04",Attack([PC]))
ActionOverride("drowbd05",Attack([PC]))
ActionOverride("drowbd06",Attack([PC]))
ActionOverride("drowbd07",Attack([PC]))
ActionOverride("drowbd08",Attack([PC]))
ActionOverride("drowbd09",Attack([PC]))
ActionOverride("drowbd10",Attack([PC]))
ActionOverride("drowbd11",Attack([PC]))
Wait(10)
ApplySpell(Player1,WIZARD_DISINTEGRATE_IGNORE_RESISTANCE)~ EXIT
END
