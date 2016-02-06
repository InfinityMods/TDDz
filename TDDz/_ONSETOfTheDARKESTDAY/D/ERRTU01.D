BEGIN ~ERRTU01~

IF ~PartyHasItem("erturing")
NumInPartyLT(2)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 4.1 4.0 1.1 1.0
  SAY @5
  IF ~~ THEN DO ~CreateVisualEffectObject("spplanar","errtu01")
CreateVisualEffectObject("spportal","errtu01")
CreateVisualEffectObject("sppolymp","errtu01")
Wait(1)
DestroySelf()~ EXIT
END

IF ~PartyHasItem("erturing")
NumInPartyGT(1)~ THEN BEGIN 3
  SAY @6
  IF ~~ THEN REPLY @1 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @7
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~!PartyHasItem("erturing")~ THEN BEGIN 5
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 6
  IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @11
  IF ~~ THEN DO ~ApplySpell(Player1,WIZARD_FLESH_TO_STONE_IGNORE_RESISTANCE)~ EXIT
END
