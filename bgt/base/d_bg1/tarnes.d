BEGIN ~tarnes~

IF ~True()~ THEN BEGIN 0
  SAY @17882
  IF ~~ THEN REPLY @17883 GOTO 1
  IF ~~ THEN REPLY @17884 GOTO 5
  IF ~~ THEN REPLY @17885 GOTO 7
END

IF ~~ THEN BEGIN 1
  SAY @17886
  IF ~~ THEN REPLY @17888 GOTO 2
  IF ~~ THEN REPLY @17889 GOTO 8
  IF ~~ THEN REPLY @17890 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @17891
  IF ~~ THEN REPLY @17892 GOTO 3
  IF ~~ THEN REPLY @17893 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @17894
  IF ~~ THEN DO ~Enemy()~ JOURNAL @310443 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @17895
  IF ~~ THEN DO ~Enemy()~ JOURNAL @310443 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @17896
  IF ~~ THEN REPLY @17897 GOTO 6
  IF ~~ THEN REPLY @17898 GOTO 4
END

IF ~~ THEN BEGIN 6
  SAY @17899
  IF ~~ THEN DO ~Enemy()~ JOURNAL @310443 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @17900
  IF ~~ THEN DO ~Enemy()~ JOURNAL @310443 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @17901
  IF ~~ THEN REPLY @17902 GOTO 6
  IF ~~ THEN REPLY @17903 GOTO 4
END
