BEGIN ~noblpa1~

IF ~~ THEN BEGIN 0
  SAY @11802
  IF ~~ THEN EXTERN ~NOBLPA2~ 0
END

IF ~~ THEN BEGIN 1
  SAY @11805
  IF ~~ THEN EXTERN ~LIIA~ 1
END

IF ~~ THEN BEGIN 2
  SAY @11808
  IF ~~ THEN EXTERN ~BELT~ 3
END
