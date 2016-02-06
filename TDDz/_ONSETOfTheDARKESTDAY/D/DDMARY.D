BEGIN ~DDMARY~

IF ~Global("tz_TDD_Complete","GLOBAL",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_TDD_Complete","GLOBAL",1)~ EXTERN ~DDPOEND~ 0
END

IF ~~ THEN BEGIN 1 // from: DDMINEND:2.0
  SAY @1
  IF ~~ THEN JOURNAL @50106 EXTERN ~DDPOEND~ 1
END

IF ~~ THEN BEGIN 2 // from: DDPOEND:1.0
  SAY @2
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("DDMMEND")~ EXIT
END

IF ~AreaCheck("ARPO05")~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN DO ~AddMapNote([492.1884],@50116)//"Mary Magus's House")
StartCutSceneMode()
StartCutScene("DDMARY01")~ EXIT
END

IF ~AreaCheck("MM5103")~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN REPLY @5 DO ~MakeGlobal()
Wait(1)
StartCutscene("DDMARY02")~ EXIT
  IF ~~ THEN REPLY @6 EXIT
END
