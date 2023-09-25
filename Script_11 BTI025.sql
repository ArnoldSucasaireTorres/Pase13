---------------------------------------------------
--------------- SDT's DEL SERVICIO ----------------
---------------------------------------------------

--POSICION DE NEGOCIOS --
DELETE from BTI025 WHERE BTISDTNOM ='SdtJAQMBBTRESUMENMORASBS';--0
Insert into BTI025 (BTISDTNOM,BTISDTVERSION,BTISDTNOMINT,BTISDTESTADO,BTISDTTIPO,BTISDTNAMESPACE,BTISDTFECHA,BTISDTDESCRIP,BTISDTNATIVO) values ('SdtJAQMBBTRESUMENMORASBS','1','SdtJAQMBBTRESUMENMORASBS','Desarrollo          ',0,'http://uy.com.dlya.bantotal/BTSOA/',to_date('22-AUG-23','DD-MON-RR'),'SDT - Mora SBS','S');
COMMIT;