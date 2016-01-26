BEGIN ~DDKEND01~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~OR(7)
PartyHasItem("MISC20")
PartyHasItem("MISC26")
PartyHasItem("MISC41")
PartyHasItem("MISC42")
PartyHasItem("MISC43")
PartyHasItem("MISC44")
PartyHasItem("MISC45")~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 6
  IF ~Class(LastTalkedToBy(),THIEF)~ THEN REPLY @3 GOTO 16
  IF ~CheckStatGT(LastTalkedToBy(),44,LORE)~ THEN REPLY @4 GOTO 19
  IF ~!PartyHasItem("MISC20")
!PartyHasItem("MISC26")
!PartyHasItem("MISC41")
!PartyHasItem("MISC42")
!PartyHasItem("MISC43")
!PartyHasItem("MISC44")
!PartyHasItem("MISC45")~ THEN REPLY @1 GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 18.0 16.1 0.0
  SAY @5
  IF ~PartyHasItem("MISC20")~ THEN DO ~TakePartyItem("MISC20")~ GOTO 2
  IF ~PartyHasItem("MISC26")~ THEN DO ~TakePartyItem("MISC26")~ GOTO 2
  IF ~PartyHasItem("MISC41")~ THEN DO ~TakePartyItem("MISC41")~ GOTO 2
  IF ~PartyHasItem("MISC42")~ THEN DO ~TakePartyItem("MISC42")~ GOTO 2
  IF ~PartyHasItem("MISC43")~ THEN DO ~TakePartyItem("MISC43")~ GOTO 2
  IF ~PartyHasItem("MISC44")~ THEN DO ~TakePartyItem("MISC44")~ GOTO 2
  IF ~PartyHasItem("MISC45")~ THEN DO ~TakePartyItem("MISC45")~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 13.0 1.6 1.5 1.4 1.3 1.2 1.1 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 4
  IF ~~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.0
  SAY @10
  IF ~HasItem("MISC20",Myself)~ THEN DO ~DestroyItem("MISC20")
GiveItemCreate("MISC20",LastTalkedToBy(),0,0,0)
GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) //DropItem("DDmap01",[-1.-1])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
  IF ~HasItem("MISC26",Myself)~ THEN DO ~DestroyItem("MISC26")
GiveItemCreate("MISC26",LastTalkedToBy(),0,0,0)
GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) // DropItem("DDmap01",[-1.-1])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
  IF ~HasItem("MISC41",Myself)~ THEN DO ~DestroyItem("MISC41")
GiveItemCreate("MISC41",LastTalkedToBy(),0,0,0)
GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0)
//DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
  IF ~HasItem("MISC42",Myself)~ THEN DO ~DestroyItem("MISC42")
GiveItemCreate("MISC42",LastTalkedToBy(),0,0,0)
GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0)
//DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
  IF ~HasItem("MISC43",Myself)~ THEN DO ~DestroyItem("MISC43")
GiveItemCreate("MISC43",LastTalkedToBy(),0,0,0)
GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0)
//DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
  IF ~HasItem("MISC44",Myself)~ THEN DO ~DestroyItem("MISC44")
GiveItemCreate("MISC44",LastTalkedToBy(),0,0,0)
GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0)
//DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
  IF ~HasItem("MISC45",Myself)~ THEN DO ~DestroyItem("MISC45")
GiveItemCreate("MISC45",LastTalkedToBy(),0,0,0)
GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0)
//DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY @11
  IF ~~ THEN REPLY @12 DO ~GiveItemCreate("DDmap01",LastTalkedToBy(),0,0,0)~ EXIT
  IF ~~ THEN REPLY @13 GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 9.0 4.1
  SAY @14
  IF ~~ THEN DO ~GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) //DropItem("DDmap01",[2.2]) // Dialog: 1-2-1
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 8
  IF ~~ THEN REPLY @18 GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY @19
  IF ~~ THEN DO ~Enemy()
SetGlobal("tz_fight","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY @20
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 5
  IF ~~ THEN REPLY @23 GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY @24
  IF ~~ THEN DO ~GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) //DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.2
  SAY @25
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @26
  IF ~OR(7)
PartyHasItem("MISC20")
PartyHasItem("MISC26")
PartyHasItem("MISC41")
PartyHasItem("MISC42")
PartyHasItem("MISC43")
PartyHasItem("MISC44")
PartyHasItem("MISC45")~ THEN REPLY @27 GOTO 13
  IF ~OR(7)
PartyHasItem("MISC20")
PartyHasItem("MISC26")
PartyHasItem("MISC41")
PartyHasItem("MISC42")
PartyHasItem("MISC43")
PartyHasItem("MISC44")
PartyHasItem("MISC45")~ THEN REPLY @28 GOTO 13
  IF ~OR(7)
PartyHasItem("MISC20")
PartyHasItem("MISC26")
PartyHasItem("MISC41")
PartyHasItem("MISC42")
PartyHasItem("MISC43")
PartyHasItem("MISC44")
PartyHasItem("MISC45")~ THEN REPLY @29 GOTO 13
  IF ~OR(7)
PartyHasItem("MISC20")
PartyHasItem("MISC26")
PartyHasItem("MISC41")
PartyHasItem("MISC42")
PartyHasItem("MISC43")
PartyHasItem("MISC44")
PartyHasItem("MISC45")~ THEN REPLY @30 GOTO 13
  IF ~CheckStatLT(LastTalkedToBy(),9,INT)
OR(7)
PartyHasItem("MISC20")
PartyHasItem("MISC26")
PartyHasItem("MISC41")
PartyHasItem("MISC42")
PartyHasItem("MISC43")
PartyHasItem("MISC44")
PartyHasItem("MISC45")~ THEN REPLY @31 GOTO 13
  IF ~!PartyHasItem("MISC20")
!PartyHasItem("MISC26")
!PartyHasItem("MISC41")
!PartyHasItem("MISC42")
!PartyHasItem("MISC43")
!PartyHasItem("MISC44")
!PartyHasItem("MISC45")~ THEN REPLY @27 GOTO 14
  IF ~!PartyHasItem("MISC20")
!PartyHasItem("MISC26")
!PartyHasItem("MISC41")
!PartyHasItem("MISC42")
!PartyHasItem("MISC43")
!PartyHasItem("MISC44")
!PartyHasItem("MISC45")~ THEN REPLY @28 GOTO 14
  IF ~!PartyHasItem("MISC20")
!PartyHasItem("MISC26")
!PartyHasItem("MISC41")
!PartyHasItem("MISC42")
!PartyHasItem("MISC43")
!PartyHasItem("MISC44")
!PartyHasItem("MISC45")~ THEN REPLY @29 GOTO 14
  IF ~!PartyHasItem("MISC20")
!PartyHasItem("MISC26")
!PartyHasItem("MISC41")
!PartyHasItem("MISC42")
!PartyHasItem("MISC43")
!PartyHasItem("MISC44")
!PartyHasItem("MISC45")~ THEN REPLY @30 GOTO 14
  IF ~!PartyHasItem("MISC20")
!PartyHasItem("MISC26")
!PartyHasItem("MISC41")
!PartyHasItem("MISC42")
!PartyHasItem("MISC43")
!PartyHasItem("MISC44")
!PartyHasItem("MISC45")
!Alignment(Player1,MASK_GOOD)~ THEN REPLY @31 GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.4 12.3 12.2 12.1 12.0
  SAY @32
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 12.9 12.8 12.7 12.6 12.5
  SAY @33
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @34
  IF ~~ THEN DO ~GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) //DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.2
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 17
  IF ~OR(7)
PartyHasItem("MISC20")
PartyHasItem("MISC26")
PartyHasItem("MISC41")
PartyHasItem("MISC42")
PartyHasItem("MISC43")
PartyHasItem("MISC44")
PartyHasItem("MISC45")~ THEN REPLY @37 GOTO 1
  IF ~!PartyHasItem("MISC20")
!PartyHasItem("MISC26")
!PartyHasItem("MISC41")
!PartyHasItem("MISC42")
!PartyHasItem("MISC43")
!PartyHasItem("MISC44")
!PartyHasItem("MISC45")~ THEN REPLY @37 GOTO 25
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY @38
  IF ~~ THEN DO ~Enemy()
SetGlobal("tz_fight","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.3
  SAY @39
  IF ~~ THEN REPLY @40 GOTO 20
  IF ~~ THEN REPLY @41 GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY @42
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY @43
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY @44
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @45
  IF ~~ THEN DO ~GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) //DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1
  SAY @46
  IF ~~ THEN DO ~GiveItemCreate("DDmap01",LastTalkedToBy(),0,0,0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.2 0.4
  SAY @47
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY @48
  IF ~~ THEN REPLY @49 GOTO 27
  IF ~~ THEN REPLY @50 GOTO 32
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY @51
  IF ~~ THEN REPLY @52 GOTO 28
  IF ~!Class(LastTalkedToBy(),MAGE)
!Class(LastTalkedToBy(),CLERIC_MAGE)~ THEN REPLY @53 GOTO 29
  IF ~OR(4)
Class(LastTalkedToBy(),MAGE)
Class(LastTalkedToBy(),FIGHTER_MAGE)
Class(LastTalkedToBy(),MAGE_THIEF)
Class(LastTalkedToBy(),CLERIC_MAGE)
Class(LastTalkedToBy(),FIGHTER_MAGE_THIEF)
Class(LastTalkedToBy(),FIGHTER_MAGE_CLERIC)~ THEN REPLY @54 GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY @55
  IF ~~ THEN DO ~GiveItemCreate("DDmap01",LastTalkedToBy(),0,0,0)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY @56
  IF ~~ THEN DO ~GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) //DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.2
  SAY @57
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY @58
  IF ~~ THEN DO ~GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) //DropItem("DDmap01",[2.2])
DisplayStringHead(Player1,@63)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.1
  SAY @59
  IF ~~ THEN REPLY @60 GOTO 33
  IF ~~ THEN REPLY @61 GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY @62
  IF ~~ THEN DO ~GiveItemCreate("ddmap01",LastTalkedToBy(),0,0,0) //DropItem("DDmap01",[2.2])
DisplayStringHead(Myself,@63)
EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY @19
  IF ~~ THEN DO ~Enemy()
SetGlobal("tz_fight","LOCALS",1)~ EXIT
END
