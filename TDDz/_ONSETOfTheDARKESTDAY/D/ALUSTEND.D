BEGIN ~ALUSTEND~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @5
  IF ~~ THEN REPLY @6 DO ~CreateVisualEffectObject("spportal","alust03")
CreateVisualEffectObject("spplanar","alust03")
CreateVisualEffectObject("spdimndr","alust03")
Wait(1)
ActionOverride("alust03",DestroySelf())
SetGlobal("tz_gandarsouth","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @7 DO ~CreateVisualEffectObject("spportal","alust03")
CreateVisualEffectObject("spplanar","alust03")
CreateVisualEffectObject("spdimndr","alust03")
Wait(1)
ActionOverride("alust03",DestroySelf())
SetGlobal("tz_gandarsouth","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY @9
  IF ~~ THEN REPLY @10 DO ~CreateVisualEffectObject("spportal","alust03")
CreateVisualEffectObject("spplanar","alust03")
CreateVisualEffectObject("spdimndr","alust03")
SetGlobal("tz_errtugear","GLOBAL",1)
Wait(2)
ActionOverride("alust03",DestroySelf())
SetGlobalTimer("tz_ertback","GLOBAL",120)
SetGlobal("tz_gandarsouth","GLOBAL",1)~ EXIT
  IF ~~ THEN REPLY @11 DO ~CreateVisualEffectObject("spportal","alust03")
CreateVisualEffectObject("spplanar","alust03")
CreateVisualEffectObject("spdimndr","alust03")
Wait(1)
ActionOverride("alust03",DestroySelf())
SetGlobal("tz_gandarsouth","GLOBAL",1)~ EXIT
END
