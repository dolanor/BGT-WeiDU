BEGIN ~flambg~

IF WEIGHT #3 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @1519
  IF ~~ THEN REPLY @1524 GOTO 1
  IF ~~ THEN REPLY @1525 GOTO 2
  IF ~~ THEN REPLY @1526 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @1520
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1521
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1522
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1523
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Global("Chapter","GLOBAL",8)~ THEN BEGIN 5
  SAY @6926
  IF ~~ THEN DO ~Enemy()~ SOLVED_JOURNAL @310367 EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 6
  SAY @6928
  IF ~~ THEN JOURNAL @310351 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9005
  IF ~~ THEN EXIT
END