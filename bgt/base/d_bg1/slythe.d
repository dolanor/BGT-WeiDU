BEGIN ~slythe~

IF WEIGHT #1 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @17030
  IF ~~ THEN EXTERN ~KRYSTI~ 0
END

IF ~~ THEN BEGIN 1
  SAY @17035
  IF ~~ THEN EXTERN ~KRYSTI~ 1
END

IF ~~ THEN BEGIN 2
  SAY @17037
  IF ~~ THEN EXTERN ~KRYSTI~ 2
END

IF ~~ THEN BEGIN 3
  SAY @17321
  IF ~~ THEN EXTERN ~KRYSTI~ 3
END

IF WEIGHT #0 ~Dead("Krystin")~ THEN BEGIN 4
  SAY @17998
  IF ~~ THEN DO ~Enemy()~ EXIT
END
