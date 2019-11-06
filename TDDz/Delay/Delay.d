CHAIN
IF WEIGHT #-2~AreaCheck("ar2500") NumTimesTalkedTo(0)~ THEN DDWarp01 Delay1
~<CHARNAME>. you have come far from Candlekeep, but I can arranged a visit back to your home... if you choose to go there, that is. A small vacation from the recent hassle you had to endure.~
END
++~Yes, I would like to visit my home once again. Maybe I will see some old friends...~+ Delay3
++~I'm always up for some more traveling.~+ Delay3
++~There is no way I'm ever going back to that hellhole.~+ Delay2

CHAIN
IF~~THEN DDWarp01 Delay2
~I wasn't aware that you felt that way about your home. However, my offer still stands if you change your mind.~EXIT

CHAIN
IF~~THEN DDWarp01 Delay3
~Wonderful. Let us go...~DO~SetGlobal("tz_StartOnsetOfTDD","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("candwarp")~EXIT
