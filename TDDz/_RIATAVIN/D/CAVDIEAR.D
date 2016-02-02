BEGIN ~CAVDIEAR~

IF ~True()~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN DO ~CreateVisualEffectObject("spbdimsp","artcave4")
ActionOverride("artcave4",DestroySelf())
AddExperienceParty(CAVDIEAR_D_400000)
SetGlobalTimer("tz_DrowItemsTimer","GLOBAL",ONE_DAY)  
SetGlobal("tz_DrowItems","GLOBAL",1)
SetGlobal("tz_artraise","GLOBAL",1)~ JOURNAL @50104 EXIT
END
