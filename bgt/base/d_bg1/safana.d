BEGIN ~safana~

IF WEIGHT #2 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty([0.0.0.0.0.MALE])~ THEN BEGIN 0
  SAY @587
  IF ~~ THEN REPLY @601 EXIT
  IF ~ReactionGT(LastTalkedToBy(Myself),NEUTRAL_UPPER)~ THEN REPLY @602 GOTO 1
  IF ~ReactionLT(LastTalkedToBy(Myself),FRIENDLY_LOWER)
ReactionGT(LastTalkedToBy(Myself),HOSTILE_UPPER)~ THEN REPLY @822 GOTO 2
  IF ~ReactionLT(LastTalkedToBy(Myself),NEUTRAL_LOWER)~ THEN REPLY @823 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @588
  IF ~~ THEN REPLY @603 GOTO 6
  IF ~~ THEN REPLY @604 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @589
  IF ~~ THEN REPLY @605 GOTO 6
  IF ~~ THEN REPLY @606 GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @590
  IF ~~ THEN REPLY @607 GOTO 6
  IF ~~ THEN REPLY @608 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @591
  IF ~~ THEN REPLY @609 GOTO 6
  IF ~~ THEN REPLY @610 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @592
  IF ~~ THEN DO ~SetGlobalTimer("Safana","GLOBAL",FIVE_DAYS)
JoinParty()~ UNSOLVED_JOURNAL @310297 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @593
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7
  SAY @594
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @598
  IF ~~ THEN REPLY @611 EXIT
  IF ~~ THEN REPLY @612 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @599
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10
  SAY @600
  IF ~~ THEN DO ~SetGlobalTimer("Safana","GLOBAL",FIVE_DAYS)
JoinParty()~ EXIT
END

IF WEIGHT #0 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)
InParty([0.0.0.0.0.MALE])~ THEN BEGIN 11
  SAY @6371
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @6372
  IF ~~ THEN REPLY @6373 GOTO 9
  IF ~~ THEN REPLY @6374 GOTO 10
END

IF WEIGHT #3 ~NumTimesTalkedTo(0)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 13
  SAY @14737
  IF ~~ THEN UNSOLVED_JOURNAL @311297 EXIT
END

IF WEIGHT #1 ~StateCheck(Myself,STATE_CHARMED)
GlobalLT("ENDOFBG1","GLOBAL",2)~ THEN BEGIN 14
  SAY @14738
  IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 15
  SAY @14739
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()~ EXIT
END

IF ~False()~ THEN BEGIN 16
  SAY @14740
  IF ~~ THEN DO ~LeaveParty()
SetDialogue("Safanp")~ EXIT
END

IF WEIGHT #4 ~True()~ THEN BEGIN 17
  SAY @10884
  IF ~~ THEN REPLY @10885 EXIT
  IF ~~ THEN REPLY @10886 DO ~SetGlobalTimer("Safana","GLOBAL",TEN_DAYS)
JoinParty()~ EXIT
END