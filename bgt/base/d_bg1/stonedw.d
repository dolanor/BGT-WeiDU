BEGIN ~stonedw~

IF ~Global("DurStatue","GLOBAL",1)
Global("DurStatx","GLOBAL",0)~ THEN BEGIN 0
  SAY @23289
  IF ~~ THEN EXIT
END

IF ~Global("viking","GLOBAL",1)
Global("vikingx","GLOBAL",0)~ THEN BEGIN 1
  SAY @23310
  IF ~~ THEN EXIT
END

IF ~Global("Durtomb","GLOBAL",1)
Global("Durtombx","GLOBAL",0)~ THEN BEGIN 2
  SAY @23321
  IF ~~ THEN EXIT
END
