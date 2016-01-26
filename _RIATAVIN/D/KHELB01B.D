BEGIN ~KHELB01B~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","khelb01")
GiveItemCreate("scrl8h",Player1,0,0,0)
// Notes : GiveItemCreate("scrx66",Player1,0,0,0)
Wait(2)
ActionOverride("khelb01",DestroySelf())
SetGlobal("tz_enterhhelbhall","GLOBAL",6)~ EXIT
END
