BEGIN ~kivan~

IF WEIGHT #1 ~ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 0
  SAY @401
  IF ~~ THEN REPLY @411 GOTO 4
  IF ~~ THEN REPLY @412 GOTO 3
END

IF WEIGHT #2 ~ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(),HOSTILE_UPPER)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 1
  SAY @402
  IF ~~ THEN REPLY @413 GOTO 4
  IF ~~ THEN REPLY @414 GOTO 3
END

IF WEIGHT #3 ~ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 2
  SAY @403
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @405
  IF ~~ THEN REPLY @6274 GOTO 9
  IF ~~ THEN REPLY @6275 GOTO 10
  IF ~~ THEN REPLY @6276 GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @406
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 5
  SAY @407
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 6
  SAY @408
  IF ~~ THEN REPLY @418 GOTO 9
  IF ~~ THEN REPLY @419 DO ~SetGlobalTimer("Kivan","GLOBAL",FIVE_DAYS)
JoinParty()~ GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @409
  IF ~~ THEN REPLY @420  GOTO 9
  IF ~~ THEN REPLY @6280 GOTO 10
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 8
  SAY @6281
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @7069
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @7070
  IF ~~ THEN UNSOLVED_JOURNAL @310416
  DO ~SetGlobalTimer("Kivan","GLOBAL",THIRTY_DAYS)
JoinParty()~ EXIT
END

IF ~False()~ THEN BEGIN 11
  SAY @14362
  IF ~~ THEN DO ~LeaveParty()
SetDialog("Kivanp")~ EXIT
END

IF WEIGHT #1 ~False()~ THEN BEGIN 12
  SAY @14363
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END