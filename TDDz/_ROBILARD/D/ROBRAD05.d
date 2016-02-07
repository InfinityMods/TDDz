BEGIN ~ROBRAD05~

IF ~True()~ THEN BEGIN 0
  SAY ~Finally we have tracked you down Robillard of the Sea Sprite.~
  IF ~~ THEN REPLY ~Who are you and what do you want with him?~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY ~He knows why I am here.~
  IF ~~ THEN REPLY ~Yes I know what you want, hired by filthy dirty pirates to take your revenge against Robillard for doing good.~ GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY ~I am being a paid great bounty for your corpse and morals pay no part. Prepare to die Robillard.~
  IF ~~ THEN DO ~ActionOverride("robrad01",Enemy())
ActionOverride("robrad02",Enemy())
ActionOverride("robrad03",Enemy())
ActionOverride("robrad04",Enemy())~ EXIT
END
