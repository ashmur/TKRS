SET DEFAULT TO f:\atestat 
CLOSE DATABASES
_screen.WindowState= 2
_screen.Picture='background.jpg'
USE leltar.dbf IN 1
USE vevok.dbf IN 2
USE rendelesek.dbf IN 3
USE eladasok.dbf IN 4
USE leltar2.dbf IN 5
USE vevok2.dbf IN 6
USE rendeles.dbf IN 7
USE leltar3.dbf IN 8
SELECT 3
LOCATE FOR rend_cod=1
IF FOUND() then
  p=0
  GOTO top
  SCAN
    p=rend_cod && rendeles kodja
  ENDSCAN
  p=p+1
ELSE
  p=1
ENDIF
DO main.mpr
READ events