BEGIN ~housg1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8116
  IF ~~ THEN EXTERN ~HOUSG2~ 0
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @8117
  IF ~~ THEN EXTERN ~HOUSG2~ 1
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 2
  SAY @8118
  IF ~~ THEN EXTERN ~HOUSG2~ 2
END

IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 3
  SAY @8125
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9252
  IF ~~ THEN EXIT
END