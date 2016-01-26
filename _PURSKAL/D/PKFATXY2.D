BEGIN ~PKFATXY2~

IF ~NumTimesTalkedTo(0)
Global("tz_pkdead1help","GLOBAL",6)
PartyHasItem("lotus")~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY @1
  IF ~~ THEN DO ~SetGlobal("tz_pkdead1help","GLOBAL",7)~ EXIT
END
