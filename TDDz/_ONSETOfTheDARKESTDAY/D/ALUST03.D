BEGIN ~ALUST03~

IF ~~ THEN BEGIN s0 // from: ERRTULOS:0.0
  SAY @0
  IF ~~ THEN EXTERN ~ERRTULOS~ 1
END

IF ~~ THEN BEGIN s2 // from: ERRTULOS:2.0
  SAY @1 /* #75615 */
  IF ~~ THEN EXTERN ~ERRTULOS~ 2
END

IF ~~ THEN BEGIN s3 // from: ERRTULOS:1.0
  SAY @2 /* #75616 */
  IF ~~ THEN DO ~CreateVisualEffectObject("spplanar","errtu03")
CreateVisualEffectObject("sppolymp","errtu03")
CreateVisualEffectObject("spportal","errtu03")
Wait(1)
ActionOverride("errtu03",DestroySelf())
AddexperienceParty(ALUST03_D_250000)
SetGlobal("tz_errtusnuf","GLOBAL",4)~ EXIT
END
