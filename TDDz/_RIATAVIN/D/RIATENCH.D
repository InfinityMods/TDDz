BEGIN ~RIATENCH~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 2.1 0.0
  SAY @3
  IF ~!PartyHasItem("AMUL02")
!PartyHasItem("AMUL04")
!PartyHasItem("AMUL05")
!PartyHasItem("AMUL06")
!PartyHasItem("AMUL07")
!PartyHasItem("AMUL08")
!PartyHasItem("AMUL09")
!PartyHasItem("AMUL10")
!PartyHasItem("AMUL11")
!PartyHasItem("AMUL12")
!PartyHasItem("AMUL13")
!PartyHasItem("RING01")
!PartyHasItem("RING10")
!PartyHasItem("RING11")
!PartyHasItem("RING12")
!PartyHasItem("RING13")
!PartyHasItem("RING14")
!PartyHasItem("RING15")
!PartyHasItem("RING16")
!PartyHasItem("RING17")
!PartyHasItem("RING18")
!PartyHasItem("RING19")
!PartyHasItem("RING32")~ THEN GOTO 3
  IF ~PartyHasItem("AMUL02")~ THEN GOTO 4
  IF ~PartyHasItem("AMUL04")~ THEN GOTO 7
  IF ~PartyHasItem("AMUL05")~ THEN GOTO 8
  IF ~PartyHasItem("AMUL06")~ THEN GOTO 9
  IF ~PartyHasItem("AMUL07")~ THEN GOTO 10
  IF ~PartyHasItem("AMUL08")~ THEN GOTO 11
  IF ~PartyHasItem("AMUL09")~ THEN GOTO 12
  IF ~PartyHasItem("AMUL10")~ THEN GOTO 13
  IF ~PartyHasItem("AMUL11")~ THEN GOTO 14
  IF ~PartyHasItem("AMUL12")~ THEN GOTO 15
  IF ~PartyHasItem("AMUL13")~ THEN GOTO 16
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY @4
  IF ~~ THEN REPLY @5 EXIT
  IF ~~ THEN REPLY @6 GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY @7
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 EXIT
END

IF ~~ THEN BEGIN 5 // from: 16.0 15.0 14.0 13.0 12.0 11.0 10.0 9.0 8.0 7.0 4.0
  SAY @11
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @12
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 7 // from: 1.2
  SAY @13
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 1.3
  SAY @14
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 1.4
  SAY @15
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 1.5
  SAY @16
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 1.6
  SAY @17
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 1.7
  SAY @18
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 1.8
  SAY @19
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 1.9
  SAY @20
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 1.10
  SAY @21
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 1.11
  SAY @22
  IF ~~ THEN REPLY @9 GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 6.0
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 18
  IF ~PartyGoldGT(5999)~ THEN REPLY @25 GOTO 19
  IF ~PartyGoldGT(7999)~ THEN REPLY @26 GOTO 20
  IF ~PartyGoldGT(6999)~ THEN REPLY @27 GOTO 21
  IF ~PartyGoldGT(12999)
OR(4)
PartyHasItem("AMUL10")
PartyHasItem("AMUL11")
PartyHasItem("AMUL12")
PartyHasItem("AMUL13")~ THEN REPLY @28 GOTO 22
  IF ~PartyGoldGT(22999)
OR(2)
PartyHasItem("AMUL11")
PartyHasItem("AMUL12")~ THEN REPLY @29 GOTO 23
  IF ~PartyGoldGT(6999)~ THEN REPLY @30 GOTO 24
  IF ~PartyGoldGT(12999)~ THEN REPLY @31 GOTO 25
  IF ~PartyGoldGT(15999)
OR(3)
PartyHasItem("AMUL11")
PartyHasItem("AMUL12")
PartyHasItem("AMUL13")~ THEN REPLY @32 GOTO 26
  IF ~PartyGoldGT(13999)~ THEN REPLY @33 GOTO 27
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY @34
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
GiveItemCreate("AMUL01",Player1,0,0,0)
TakePartyGold(6000)~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
GiveItemCreate("AMUL17",Player1,0,0,0)
TakePartyGold(8000)~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.3
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
GiveItemCreate("AMUL19",Player1,0,0,0)
TakePartyGold(7000)~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
GiveItemCreate("AMUL20",Player1,0,0,0)
TakePartyGold(13000)~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.5
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
GiveItemCreate("AMUL21",Player1,0,0,0)
TakePartyGold(23000)~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.6
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
GiveItemCreate("AMUL22",Player1,0,0,0)
TakePartyGold(7000)~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.7
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
GiveItemCreate("AMUL23",Player1,0,0,0)
TakePartyGold(13000)~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.8
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
GiveItemCreate("AMUL24",Player1,0,0,0)
TakePartyGold(16000)~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.9
  SAY @35
  IF ~~ THEN DO ~ActionOverride("riatench",ForceSpell(Player1,WIZARD_DISPEL_MAGIC_VISUALS_ONLY))
Wait(4)
GiveItemCreate("AMUL25",Player1,0,0,0)
TakePartyGold(14000)~ EXIT
END
