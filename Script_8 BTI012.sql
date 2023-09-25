---------------------------------------------------
----------- VALIDACION DEL SERVICIO ---------------
---------------------------------------------------

--POSICION DE NEGOCIOS --
DELETE from  BTI012 Where BTICANNOM = 'MMISTI' AND BTINOM ='CMACMISTI' AND BTISRVNOM = 'CMACMoraSBS' AND BTIMTDNOM = 'ObtenerResumenMoraSBS'; -- 0
Insert into BTI012 (BTICANNOM,BTINOM,BTISRVNOM,BTISRVVER,BTIMTDNOM,BTISRVHAB) values ('MMISTI','CMACMISTI','CMACMoraSBS','1','ObtenerResumenMoraSBS','S');

COMMIT;