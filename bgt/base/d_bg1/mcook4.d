BEGIN ~mcook4~

IF WEIGHT #2 ~True()~ THEN BEGIN 0
  SAY @8242
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 1
  SAY @8243
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9184
  IF ~~ THEN EXIT
END