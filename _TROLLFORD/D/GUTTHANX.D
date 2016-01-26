BEGIN ~GUTTHANX~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 DO ~AddExperienceParty(GUTTHANX_D_10000_A) // TDD xp=10000
ReputationInc(1)
ActionOverride("quadkid2",EscapeArea())~ EXIT
  IF ~~ THEN REPLY @2 DO ~AddExperienceParty(GUTTHANX_D_10000_B) // TDD xp=10000
ReputationInc(1)
ActionOverride("quadkid2",EscapeArea())~ EXIT
END
