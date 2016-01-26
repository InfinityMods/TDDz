BEGIN ~PASHTRAV~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 4.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @7
  IF ~~ THEN DO ~ActionOverride("travmage",ForceSpell("pashtrav",WIZARD_HASTE))
Wait(4)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
ActionOverride("pashtrav",DestroySelf())
ActionOverride("travmage",DestroySelf())
ActionOverride("travmag2",DestroySelf())
ActionOverride("travgrd1",DestroySelf())
ActionOverride("travgrd2",DestroySelf())
ActionOverride("travgrd3",DestroySelf())
ActionOverride("travgrd4",DestroySelf())
ActionOverride("travgrd5",DestroySelf())
AddExperienceParty(40000)
ReputationInc(1)
SetGlobal("tz_pashtravdone","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY @8
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @11
  IF ~~ THEN DO ~ActionOverride("pashtrav",Enemy())
ActionOverride("travmage",Enemy())
ActionOverride("travmag2",Enemy())
ActionOverride("travgrd1",Enemy())
ActionOverride("travgrd2",Enemy())
ActionOverride("travgrd4",Enemy())
ActionOverride("travgrd5",Enemy())
ReputationInc(-1)
SetGlobal("tz_pashtravdone","GLOBAL",1)~ EXIT
END
