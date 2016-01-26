BEGIN ~KHELB01~

IF ~~ THEN BEGIN 0 // from: WARDMAGA:1.1 WARDMAGA:1.0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 3.0 0.0
  SAY @1
  IF ~~ THEN EXTERN ~ELMIN01~ 0
END

IF ~~ THEN BEGIN 2 // from: WARDMAGA:3.0
  SAY @2
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","wardmaga")
CreateVisualEffectObject("spdimndr","wardmagb")
Wait(4)
ActionOverride("wardmaga",DestroySelf())
ActionOverride("wardmagb",DestroySelf())
Wait(4)
SetGlobal("tz_enterhhelbhall","GLOBAL",4)~ EXIT
END

