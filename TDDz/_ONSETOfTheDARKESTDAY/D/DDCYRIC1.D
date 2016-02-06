BEGIN ~DDCYRIC1~

IF ~Global("tz_dialog","LOCALS",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_dialog","LOCALS",1)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 3
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(1)
JumpToPoint([1361.1004])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY @6
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(1)
JumpToPoint([1361.1004])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY @7
  IF ~~ THEN DO ~StartCutSceneMode()
Wait(1)
JumpToPoint([1361.1004])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
END

IF ~Global("tz_dialog","LOCALS",1)~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN REPLY @9 DO ~StartCutSceneMode()
SetGlobal("tz_dialog","LOCALS",2)
Wait(1)
JumpToPoint([1491.809])
FaceObject(Player1)
SmallWait(7)
JumpToPoint([1129.1124])
FaceObject(Player1)
SmallWait(7)
JumpToPoint([977.983])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
  IF ~~ THEN REPLY @10 DO ~StartCutSceneMode()
SetGlobal("tz_dialog","LOCALS",2)
Wait(1)
JumpToPoint([1491.809])
FaceObject(Player1)
SmallWait(7)
JumpToPoint([1129.1124])
FaceObject(Player1)
SmallWait(7)
JumpToPoint([977.983])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
END

IF ~Global("tz_dialog","LOCALS",2)~ THEN BEGIN 6
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
  IF ~~ THEN REPLY @13 GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @14
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("tz_dialog","LOCALS",3)
Wait(1)
JumpToPoint([1522.1000])
FaceObject(Player1)
SmallWait(7)
JumpToPoint([1403.1130])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @15
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("tz_dialog","LOCALS",3)
Wait(1)
JumpToPoint([1522.1000])
FaceObject(Player1)
SmallWait(7)
JumpToPoint([1403.1130])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
END

IF ~Global("tz_dialog","LOCALS",3)~ THEN BEGIN 9
  SAY @16
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @17
  IF ~~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @20
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("tz_dialog","LOCALS",4)
Wait(1)
JumpToPoint([1247.955])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY @21
  IF ~~ THEN DO ~StartCutSceneMode()
SetGlobal("tz_dialog","LOCALS",4)
Wait(1)
JumpToPoint([1247.955])
FaceObject(Player1)
SmallWait(7)
StartDialog("DDcyric1",Player1)
EndCutSceneMode()~ EXIT
END

IF ~Global("tz_dialog","LOCALS",4)~ THEN BEGIN 13
  SAY @22
  IF ~~ THEN DO ~TriggerActivation("EXITPO30",FALSE)
Enemy()
ClearAllActions()
StartCutSceneMode()
StartCutScene("DDCUT10")~ EXIT
END
