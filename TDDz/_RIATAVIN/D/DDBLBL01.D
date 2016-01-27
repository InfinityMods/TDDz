BEGIN ~DDBLBL01~

IF ~~ THEN BEGIN 0 // from: DDMERC02:0.0
  SAY @0
  IF ~~ THEN EXTERN ~DDMERC02~ 1
END

IF ~~ THEN BEGIN 1 // from: DDMERC02:1.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("tz_BlackBladesEncounter","DD3300",4)
StartCutSceneMode()
StartCutScene("DDBBcut1")~ EXIT
END

IF ~Global("tz_BlackBladesEncounter","DD3300",4)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("tz_BlackBladesEncounter","DD3300",5)
CreateCreature("DDBLBL02",[1744.3282],0)
CreateCreature("DDBLBL02",[1713.3503],0)
CreateCreature("DDBLBL02",[1896.3745],0)
Enemy()~ EXIT
END
