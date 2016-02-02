BEGIN ~ELMIN02~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @3
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 0.1
  SAY @4
  IF ~~ THEN REPLY @5 GOTO 3
  IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.0
  SAY @7
  IF ~~ THEN EXTERN ~KHELB02~ 0
END

IF ~~ THEN BEGIN 4 // from: WARDMAGC:1.0
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @9
  IF ~~ THEN  DO ~SetGabber([PC])~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY @10
  IF ~~ THEN REPLY @11 DO ~ApplySpell(Protagonist,HELL_GAIN_STR)~ GOTO 7
  IF ~~ THEN REPLY @12 DO ~ApplySpell(Protagonist,HELL_GAIN_DEX)~ GOTO 7
  IF ~~ THEN REPLY @13 DO ~ApplySpell(Protagonist,HELL_GAIN_CON)~ GOTO 7
  IF ~~ THEN REPLY @14 DO ~ApplySpell(Protagonist,HELL_GAIN_INT)~ GOTO 7
  IF ~~ THEN REPLY @15 DO ~ApplySpell(Protagonist,HELL_GAIN_WIS)~ GOTO 7
  IF ~~ THEN REPLY @16 DO ~ApplySpell(Protagonist,HELL_GAIN_CHR)~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.5 6.4 6.3 6.2 6.1 6.0
  SAY @17
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY @18
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY @20
  IF ~~ THEN REPLY @21 DO ~CreateVisualEffectObject("spdimndr","elmin02")
CreateVisualEffectObject("spdimndr","khelb02")
CreateVisualEffectObject("spdimndr","wardmagc")
Wait(2)
ActionOverride("elmin02",DestroySelf())
ActionOverride("khelb02",DestroySelf())
ActionOverride("wardmagc",DestroySelf())
AddExperienceParty(ELMIN02_D_400000_A)~ EXIT
  IF ~~ THEN REPLY @22 DO ~CreateVisualEffectObject("spdimndr","elmin02")
CreateVisualEffectObject("spdimndr","khelb02")
CreateVisualEffectObject("spdimndr","wardmagc")
Wait(2)
ActionOverride("elmin02",DestroySelf())
ActionOverride("khelb02",DestroySelf())
ActionOverride("wardmagc",DestroySelf())
AddExperienceParty(ELMIN02_D_400000_B)~ EXIT
END
