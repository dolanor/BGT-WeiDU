BEGIN ~merch2~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @3629
  IF ~~ THEN REPLY @15290 DO ~StartStore("sto4901",LastTalkedToBy())~ EXIT
  IF ~~ THEN REPLY @15291 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @6298
  IF ~~ THEN JOURNAL @310774 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9165
  IF ~~ THEN EXIT
END
