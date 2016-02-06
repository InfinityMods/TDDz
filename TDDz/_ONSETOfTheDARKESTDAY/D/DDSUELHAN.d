BEGIN DDSUELHAN

ADD_STATE_TRIGGER SUELHAN 20 ~Global("tz_StartOnsetOfTDD","GLOBAL",0)~
ADD_TRANS_ACTION SUELHAN BEGIN 21 END BEGIN 0 END ~SetGlobal("tz_StartOnsetOfTDD","GLOBAL",1)~

APPEND SUELHAN

IF ~Global("tz_StartOnsetOfTDD","GLOBAL",1)~ THEN BEGIN s21
  SAY @1
  IF ~~ THEN DO ~SetGlobal("tz_StartOnsetOfTDD","GLOBAL",2)~ GOTO s22
END

IF ~~ THEN BEGIN s22
  SAY @2
  IF ~~ THEN REPLY @3 GOTO s23
  IF ~~ THEN REPLY @4 GOTO s23
  IF ~~ THEN REPLY @5 GOTO s24
  IF ~~ THEN REPLY @6 GOTO s25
END

IF ~~ THEN BEGIN s23
  SAY @7  
  IF ~!AreaCheckObject("AR2800",Player1)~ THEN DO ~SetGlobal("tz_TalkElhan","GLOBAL",3)
ClearAllActions()
Wait(1)
StartCutSceneMode()
StartCutScene("DDwarp01")~ EXIT  
  IF ~AreaCheckObject("AR2800",Player1)~ THEN DO ~SetGlobal("tz_TalkElhan","GLOBAL",3)
Wait(1)  
ClearAllActions()
StartCutSceneMode()
StartCutScene("DDwarp02")~ EXIT
END

IF ~~ THEN BEGIN s24
  SAY @8
  IF ~~ THEN DO ~SetGlobal("tz_TalkElhan","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN s25
  SAY @9
  IF ~~ THEN DO ~SetGlobal("tz_TalkElhan","GLOBAL",2)~ EXIT
END

IF ~Global("tz_TalkElhan","GLOBAL",2)
Global("tz_TDD_Complete","GLOBAL",0)~ THEN BEGIN s26
  SAY @10
  IF ~~ THEN REPLY @11 GOTO s23
  IF ~~ THEN REPLY @12 EXIT
END

IF ~Global("tz_TalkElhan","GLOBAL",3)
Global("tz_TDD_Complete","GLOBAL",0)~ THEN BEGIN s27
  SAY @13
  IF ~~ THEN REPLY @14 GOTO s28
  IF ~~ THEN REPLY @15 GOTO s29
  IF ~~ THEN REPLY @16 GOTO s30
END

IF ~~ THEN BEGIN s28
  SAY @17
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s29
  SAY @18
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN s30
  SAY @19
  IF ~~ THEN EXIT
END

END
