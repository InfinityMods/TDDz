BEGIN ~ROBILARD~

IF ~Global("tz_KnowRobillard","GLOBAL",0)
Class(LastTalkedToBy,MAGE)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 26.1 26.0 25.1 25.0 24.1 24.0 22.1 22.0 21.1 21.0 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @12
  IF ~~ THEN REPLY @13 DO ~SetGlobal("tz_KnowRobillard","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY @15
  IF ~~ THEN REPLY @13 DO ~SetGlobal("tz_KnowRobillard","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 4.1 2.1
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 7
  IF ~~ THEN REPLY @18 GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.0
  SAY @19
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @20
  IF ~~ THEN REPLY @21 /* #84609 */ GOTO 9
  IF ~~ THEN REPLY @22 DO ~SetGlobal("tz_KnowRobillard","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 10
  IF ~~ THEN REPLY @25 DO ~SetGlobal("tz_KnowRobillard","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 12
  IF ~~ THEN REPLY @30 GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @31
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY @32
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @33 GOTO 14
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @34 GOTO 17
  IF ~~ THEN REPLY @35 /* #84618 */ DO ~JoinParty()~ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY @36
  IF ~~ THEN REPLY @37 GOTO 15
  IF ~~ THEN REPLY @38 GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @39
  IF ~~ THEN DO ~JoinParty()
SetGlobal("tz_KnowRobillard","GLOBAL",1)
SetGlobal("tz_KickedOut","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY @40
  IF ~~ THEN DO ~JoinParty()
SetGlobal("tz_KnowRobillard","GLOBAL",1)
SetGlobal("tz_KickedOut","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.1
  SAY @41
  IF ~~ THEN DO ~JoinParty()
SetGlobal("tz_KnowRobillard","GLOBAL",1)
SetGlobal("tz_KickedOut","LOCALS",0)~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY @42
  IF ~~ THEN DO ~SetGlobal("tz_KnowRobillard","GLOBAL",1)
SetGlobal("tz_KickedOut","LOCALS",0)~ EXIT
END

IF ~Global("tz_KnowRobillard","GLOBAL",0)
Gender(LastTalkedToBy,FEMALE)
!Race(LastTalkedToBy,DWARF)
!Race(LastTalkedToBy,HALFLING)
!Race(LastTalkedToBy,HALFORC)
!Race(LastTalkedToBy,GNOME)~ THEN BEGIN 19
  SAY @43
  IF ~~ THEN REPLY @44 GOTO 20
  IF ~~ THEN REPLY @45 GOTO 22
  IF ~~ THEN REPLY @46 GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @47
  IF ~~ THEN REPLY @48 GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @49
  IF ~~ THEN REPLY @50 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY @51
  IF ~~ THEN REPLY @50 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 23 // from: 19.2
  SAY @52
  IF ~~ THEN REPLY @53 GOTO 24
  IF ~~ THEN REPLY @54 GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.1 23.0
  SAY @55
  IF ~~ THEN REPLY @50 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~Global("tz_KnowRobillard","GLOBAL",0)
Gender(LastTalkedToBy,FEMALE)
!Race(LastTalkedToBy,HUMAN)
!Race(LastTalkedToBy,HALF_ELF)
!Race(LastTalkedToBy,ELF)~ THEN BEGIN 25
  SAY @56
  IF ~~ THEN REPLY @50 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~Global("tz_KnowRobillard","GLOBAL",0)~ THEN BEGIN 26
  SAY @57
  IF ~~ THEN REPLY @50 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~Global("tz_KnowRobillard","GLOBAL",1)~ THEN BEGIN 27
  SAY @58
  IF ~~ THEN REPLY @59 GOTO 28
  IF ~~ THEN REPLY @60 EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @61
  IF ~~ THEN REPLY @62 GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY @63
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @33 GOTO 30
  IF ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @34 GOTO 33
  IF ~~ THEN REPLY @64 /* #84631 */ DO ~JoinParty()
SetGlobal("tz_KnowRobillard","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY @65
  IF ~~ THEN REPLY @37 GOTO 31
  IF ~~ THEN REPLY @38 GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @66
  IF ~~ THEN DO ~JoinParty()
SetGlobal("tz_KnowRobillard","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY @40
  IF ~~ THEN DO ~JoinParty()
SetGlobal("tz_KnowRobillard","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY @67
  IF ~~ THEN DO ~JoinParty()
SetGlobal("tz_KnowRobillard","GLOBAL",2)~ EXIT
END
