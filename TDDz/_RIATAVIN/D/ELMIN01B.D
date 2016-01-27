BEGIN ~ELMIN01B~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","elmin01")
GiveItemCreate("scrl9t",Player1,0,0,0)
Wait(2)
ActionOverride("elmin01",DestroySelf())
SetGlobal("tz_enterhhelbhall","GLOBAL",8)~ EXIT
END
