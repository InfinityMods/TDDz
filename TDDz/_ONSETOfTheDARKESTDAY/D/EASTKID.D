BEGIN ~EASTKID~

IF ~See("Nalia")
InParty("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
RandomNum(2,1)
Global("tz_urchin3naliadd","AR0400",0)~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN DO ~SetGlobal("tz_urchin3naliadd","AR0400",1)~ EXTERN ~NALIAJ~ 113
END

IF ~See("Viconia")
InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
RandomNum(2,2)
Global("tz_urchin3viconiadd","AR0400",0)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~SetGlobal("tz_urchin3viconiadd","AR0400",1)~ EXTERN ~VICONIJ~ 58
END

IF ~See("Anomen")
InParty("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
RandomNum(2,1)
Global("tz_urchin3anomendd","AR0400",0)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN DO ~SetGlobal("tz_urchin3anomendd","AR0400",1)~ EXTERN ~ANOMENJ~ 114
END

IF ~RandomNum(5,1)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 5
  SAY @5
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 6
  SAY @6
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 7
  SAY @7
  IF ~~ THEN EXIT
END
