BEGIN ~QUADKID2~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 10
END

IF ~~ THEN BEGIN 1 // from: 10.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @6
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 5
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.0
  SAY @10
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @13
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 9
  IF ~~ THEN REPLY @16 GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 8.0
  SAY @17
  IF ~!Class(Player1,MAGE)
!Class(Player1,FIGHTER_MAGE_THIEF)
!Class(Player1,FIGHTER_MAGE)
!Class(Player1,CLERIC_MAGE)
!Class(Player1,FIGHTER_MAGE_CLERIC)
!Class(Player1,SORCERER)
!Class(Player1,MAGE_THIEF)
!Class(Player2,MAGE)
!Class(Player2,FIGHTER_MAGE_THIEF)
!Class(Player2,FIGHTER_MAGE)
!Class(Player2,CLERIC_MAGE)
!Class(Player2,FIGHTER_MAGE_CLERIC)
!Class(Player2,SORCERER)
!Class(Player2,MAGE_THIEF)
!Class(Player3,MAGE)
!Class(Player3,FIGHTER_MAGE_THIEF)
!Class(Player3,FIGHTER_MAGE)
!Class(Player3,CLERIC_MAGE)
!Class(Player3,FIGHTER_MAGE_CLERIC)
!Class(Player3,SORCERER)
!Class(Player3,MAGE_THIEF)
!Class(Player4,MAGE)
!Class(Player4,FIGHTER_MAGE_THIEF)
!Class(Player4,FIGHTER_MAGE)
!Class(Player4,CLERIC_MAGE)
!Class(Player4,FIGHTER_MAGE_CLERIC)
!Class(Player4,SORCERER)
!Class(Player4,MAGE_THIEF)
!Class(Player5,MAGE)
!Class(Player5,FIGHTER_MAGE_THIEF)
!Class(Player5,FIGHTER_MAGE)
!Class(Player5,CLERIC_MAGE)
!Class(Player5,FIGHTER_MAGE_CLERIC)
!Class(Player5,SORCERER)
!Class(Player5,MAGE_THIEF)
!Class(Player6,MAGE)
!Class(Player6,FIGHTER_MAGE_THIEF)
!Class(Player6,FIGHTER_MAGE)
!Class(Player6,CLERIC_MAGE)
!Class(Player6,FIGHTER_MAGE_CLERIC)
!Class(Player6,SORCERER)
!Class(Player6,MAGE_THIEF)~ THEN REPLY @18 DO ~SetGlobal("tz_trolstomach","GLOBAL",1)~ EXIT
  IF ~Class(Player1,MAGE_ALL)~ THEN REPLY @19 DO ~SetGlobal("tz_trollgutcure1","GLOBAL",1)~ EXIT
  IF ~Class(Player2,MAGE_ALL)~ THEN REPLY @20 DO ~SetGlobal("tz_trollgutcure2","GLOBAL",1)~ EXIT
  IF ~Class(Player3,MAGE_ALL)~ THEN REPLY @21 DO ~SetGlobal("tz_trollgutcure3","GLOBAL",1)~ EXIT
  IF ~Class(Player4,MAGE_ALL)~ THEN REPLY @22 DO ~SetGlobal("tz_trollgutcure4","GLOBAL",1)~ EXIT
  IF ~Class(Player5,MAGE_ALL)~ THEN REPLY @23 DO ~SetGlobal("tz_trollgutcure5","GLOBAL",1)~ EXIT
  IF ~Class(Player6,MAGE_ALL)~ THEN REPLY @24 DO ~SetGlobal("tz_trollgutcure6","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.1
  SAY @25
  IF ~~ THEN REPLY @1 GOTO 1
END
