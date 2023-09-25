---------------------------------------------------
----------- VALIDACION DEL SERVICIO ---------------
---------------------------------------------------
Delete  from BTI004 Where BTINOM = 'CMACMISTI' AND BTISRVNOM = 'CMACPosicionNegocio'; -- 0
Insert into BTI004 (BTINOM,BTISRVNOM,BTISRVVER,BTISRVDSC,BTISRVNSBT,BTISRVCANNSBT,BTISRVOPNSBT,BTISRVVARNSBT,BTISRVPGMNAME,BTISRVSTATUS,BTISRVFPATH) values ('CMACMISTI','CMACPosicionNegocio','1','Posicion de Negocio',' ',0,0,0,' ','                    ',' ');
COMMIT;