BEGIN ~dradee~

IF WEIGHT #0 ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @20993
  IF ~~ THEN REPLY @20994 GOTO 1
  IF ~~ THEN REPLY @20995 GOTO 2
  IF ~~ THEN REPLY @20996 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @20997
  IF ~~ THEN REPLY @20998 GOTO 4
  IF ~~ THEN REPLY @20999 GOTO 5
  IF ~~ THEN REPLY @21000 GOTO 6
  IF ~~ THEN REPLY @21076 GOTO 7
END

IF ~~ THEN BEGIN 2
  SAY @21001
  IF ~~ THEN REPLY @21002 GOTO 6
  IF ~~ THEN REPLY @21003 GOTO 8
  IF ~~ THEN REPLY @21004 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @21005
  IF ~~ THEN DO ~SetGlobal("DraTalk","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @21006
  IF ~~ THEN REPLY @21007 GOTO 9
  IF ~~ THEN REPLY @21008 GOTO 5
  IF ~~ THEN REPLY @21009 GOTO 5
  IF ~~ THEN REPLY @21010 GOTO 3
END

IF ~~ THEN BEGIN 5
  SAY @21011
  IF ~~ THEN REPLY @21012 GOTO 10
  IF ~~ THEN REPLY @21013 GOTO 6
  IF ~~ THEN REPLY @21014 GOTO 3
END

IF WEIGHT #2 ~Global("DraTalk","GLOBAL",1)
Global("DraQuest","GLOBAL",0)
Global("DraUnquest","GLOBAL",0)~ THEN BEGIN 6
  SAY @21015
  IF ~~ THEN REPLY @21016 GOTO 12
  IF ~~ THEN REPLY @21017 GOTO 10
  IF ~~ THEN REPLY @21018 GOTO 3
END

IF ~~ THEN BEGIN 7
  SAY @21019
  IF ~~ THEN REPLY @21020 GOTO 8
  IF ~~ THEN REPLY @21021 GOTO 3
  IF ~~ THEN REPLY @21022 GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @21023
  IF ~~ THEN REPLY @21024 GOTO 6
  IF ~~ THEN REPLY @21025 GOTO 3
END

IF ~~ THEN BEGIN 9
  SAY @21026
  IF ~~ THEN REPLY @21027 GOTO 12
  IF ~~ THEN REPLY @21028 GOTO 15
END

IF ~~ THEN BEGIN 10
  SAY @21029
  IF ~~ THEN REPLY @21030 GOTO 13
  IF ~~ THEN REPLY @21031 GOTO 14
  IF ~~ THEN REPLY @21032 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @21033
  IF ~~ THEN REPLY @21034 GOTO 16
  IF ~~ THEN REPLY @21035 GOTO 27
  IF ~~ THEN REPLY @21036 GOTO 15
END

IF ~~ THEN BEGIN 12
  SAY @21037
  IF ~~ THEN REPLY @21095 GOTO 17
  IF ~~ THEN REPLY @21096 GOTO 23
  IF ~~ THEN REPLY @21097 GOTO 15
END

IF ~~ THEN BEGIN 13
  SAY @21038
  IF ~~ THEN REPLY @21039 GOTO 14
  IF ~~ THEN REPLY @21040 GOTO 14
  IF ~~ THEN REPLY @21041 GOTO 24
END

IF ~~ THEN BEGIN 14
  SAY @21042
  IF ~~ THEN REPLY @21043 GOTO 16
  IF ~~ THEN REPLY @21044 GOTO 3
  IF ~~ THEN REPLY @21045 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @21046
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @21047
  IF ~~ THEN REPLY @21048 UNSOLVED_JOURNAL @310678 GOTO 25
  IF ~~ THEN REPLY @21049 UNSOLVED_JOURNAL @310678 GOTO 27
  IF ~~ THEN REPLY @21050 UNSOLVED_JOURNAL @310679 GOTO 15
END

IF ~~ THEN BEGIN 17
  SAY @21051
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @21052
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @21053
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @21054
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @21055
  IF ~~ THEN DO ~SetGlobal("BGDraInfo","GLOBAL",1)~ JOURNAL @310047 GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @21056
  IF ~~ THEN REPLY @21058 GOTO 16
  IF ~~ THEN REPLY @21059 GOTO 15
  IF ~~ THEN REPLY @21060 GOTO 11
END

IF ~~ THEN BEGIN 23
  SAY @21057
  IF ~~ THEN REPLY @21061 GOTO 17
  IF ~~ THEN REPLY @21062 GOTO 26
  IF ~~ THEN REPLY @21063 GOTO 3
END

IF ~~ THEN BEGIN 24
  SAY @21064
  IF ~~ THEN REPLY @21065 GOTO 26
  IF ~~ THEN REPLY @21066 GOTO 14
  IF ~~ THEN REPLY @21067 GOTO 15
END

IF ~~ THEN BEGIN 25
  SAY @21068
  IF ~~ THEN DO ~SetGlobal("DraQuest","GLOBAL",1)
GiveItem("amul18",LastTalkedToBy)~ UNSOLVED_JOURNAL @310678 EXIT
END

IF ~~ THEN BEGIN 26
  SAY @21069
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @21070
  IF ~~ THEN DO ~SetGlobal("DraTalk","GLOBAL",1)
SetGlobal("DraUnquest","GLOBAL",1)~ EXIT
END

IF WEIGHT #3 ~Global("DraQuest","GLOBAL",1)
!PartyHasItem("misc1f")~ THEN BEGIN 28
  SAY @21071
  IF ~~ THEN EXIT
END

IF WEIGHT #4 ~Global("DraUnquest","GLOBAL",1)~ THEN BEGIN 29
  SAY @21072
  IF ~~ THEN REPLY @21073 GOTO 16
  IF ~~ THEN REPLY @21074 GOTO 27
END

IF WEIGHT #1 ~Global("DraQuest","GLOBAL",1)
PartyHasItem("misc1f")~ THEN BEGIN 30
  SAY @21075
  IF ~~ THEN DO ~SetGlobal("dradeelhelp","GLOBAL",1)
TakePartyItem("misc1f")
ForceSpell(Myself,DRYAD_TELEPORT)
EraseJournalEntry(@310678)
EraseJournalEntry(@310679)
AddexperienceParty(5000)~ SOLVED_JOURNAL @310680 EXIT
END
