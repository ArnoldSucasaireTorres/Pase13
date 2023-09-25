---------------------------------------------------
----------- VALIDACION DEL SERVICIO ---------------
---------------------------------------------------


--POSICION DE NEGOCIOS --
DELETE from  BTI014 Where BTINOM ='CMACMISTI' AND BTISRVNOM = 'CMACMoraSBS' AND BTIMTDNOM = 'ObtenerResumenMoraSBS'; -- 0
Insert into BTI014 (BTINOM,BTISRVNOM,BTISRVVER,BTIMTDNOM,BTIMTDDSC,BTIMTDNSBT,BTIMTDPGMNOM,BTIMTDPGMMTD,BTIMTDSTATUS,BTIMTDFPATH,BTIMTDENBTRA,BTIMTDESPGGX) values ('CMACMISTI','CMACMoraSBS','1','ObtenerResumenMoraSBS','Obtiene el resumen mora SBS según el perfil.',' ','pjaqm06r','execute','Validado            ',' ','N','S');

COMMIT;