BEGIN ~VICYBOAT~

IF ~True()~ THEN BEGIN 0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 DO ~ActionOverride("vicyboat",DestroySelf())~ GOTO 16
END

IF ~~ THEN BEGIN 1 // from: 7.0 0.0
  SAY @3
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY @6
  IF ~~ THEN REPLY @7 GOTO 3
  IF ~~ THEN REPLY @8 GOTO 10
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
  IF ~!Alignment(Protagonist,LAWFUL_GOOD)
!Alignment(Protagonist,LAWFUL_NEUTRAL)
!Alignment(Protagonist,LAWFUL_EVIL)
!Alignment(Protagonist,NEUTRAL_GOOD)~ THEN REPLY @13 GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY @14
  IF ~~ THEN REPLY @15 GOTO 6
  IF ~~ THEN REPLY @16 GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1 5.0
  SAY @17
  IF ~~ THEN DO ~ActionOverride("vicyboat",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY @18
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY @19 /* #79534 */
  IF ~~ THEN DO ~ActionOverride("vicyboat",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1
  SAY @20
  IF ~~ THEN DO ~ActionOverride("vicyboat",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
  IF ~~ THEN REPLY @23 GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @24
  IF ~~ THEN REPLY @25 GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY @17
  IF ~~ THEN DO ~ActionOverride("vicyboat",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1
  SAY @26
  IF ~~ THEN REPLY @27 GOTO 15
  IF ~~ THEN REPLY @28 GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY @17
  IF ~~ THEN DO ~ActionOverride("vicyboat",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 0.1
  SAY @29
  IF ~~ THEN REPLY @30 GOTO 17
  IF ~~ THEN REPLY @31 GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1 16.0
  SAY @32
  IF ~~ THEN DO ~ActionOverride("vicyboat",DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1
  SAY @33
  IF ~~ THEN DO ~ActionOverride("vicyboat",DestroySelf())~ EXIT
END
