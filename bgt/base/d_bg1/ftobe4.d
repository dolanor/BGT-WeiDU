BEGIN ~ftobe4~

IF WEIGHT #2 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8090
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8091
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @8092
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @8093
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @9064
  IF ~~ THEN EXIT
END