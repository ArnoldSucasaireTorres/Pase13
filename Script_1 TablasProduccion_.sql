------------------------------------------------------------
-----------------------JAQA02-------------------------------
------------------------------------------------------------
CREATE TABLE JAQA02
   (	
	JAQA02CCAN VARCHAR2(10) NOT NULL ENABLE, 
	JAQA02CANA VARCHAR2(2000) NOT NULL ENABLE, 
	JAQA02ORDN VARCHAR2(2000), 
	JAQA02FEIN DATE, 
	JAQA02CBRT NUMBER(17,2), 
	JAQA02MSAL NUMBER(17,2), 
	JAQA02NCTO NUMBER(9,0), 
	JAQA02NCLI NUMBER(9,0), 
	JAQA02MCLI NUMBER(9,0), 
	JAQA02PJAT NUMBER(10,6), 
	JAQA02CATR NUMBER(17,2), 
	JAQA02MMOR NUMBER(17,2), 
	JAQA02PJMT NUMBER(10,6), 
	JAQA02SCMT NUMBER(17,2), 
	JAQA02SJUD NUMBER(17,2), 
	JAQA02VMCB NUMBER(17,2), 
	JAQA02VMCL NUMBER(9,0), 
	JAQA02VMPA NUMBER(10,6), 
	JAQA02VMAT NUMBER(17,2), 
	JAQA02VDCB NUMBER(17,2), 
	JAQA02VDCL NUMBER(4,0), 
	JAQA02VDPA NUMBER(10,6), 
	JAQA02VDAT NUMBER(9,0), 
	JAQA02VSBR NUMBER(17,2), 
	JAQA02VCBR NUMBER(10,0), 
	JAQA02VMJU NUMBER(17,2), 
	JAQA02MCJU NUMBER(17,2), 
	JAQA02NUM1 NUMBER(9,0), 
	JAQA02NUM2 NUMBER(9,0), 
	JAQA02NUM3 NUMBER(9,0), 
	JAQA02IMP1 NUMBER(17,2), 
	JAQA02IMP2 NUMBER(17,2), 
	JAQA02IMP3 NUMBER(17,2), 
	JAQA02CHA1 VARCHAR2(255), 
	JAQA02CHA2 VARCHAR2(255), 
	JAQA02CHA3 VARCHAR2(255), 
	JAQA02FEC1 DATE, 
	JAQA02FEC2 DATE, 
	JAQA02FEC3 DATE 
	) TABLESPACE BANTPROD_G;

ALTER TABLE JAQA02 ADD PRIMARY KEY (JAQA02CCAN, JAQA02CANA) USING INDEX TABLESPACE BANTPROD_G_IDX;

CREATE INDEX JAQA02A2 ON JAQA02 (JAQA02CANA) TABLESPACE BANTPROD_G_IDX;

COMMENT ON TABLE JAQA02 is 'Analista - Posicionamiento de Negocio';
COMMENT ON COLUMN JAQA02.JAQA02CCAN is 'CÓDIGO COMITÉ DEL ANALISTA';
COMMENT ON COLUMN JAQA02.JAQA02CANA is 'CÓDIGO ANALISTA';
COMMENT ON COLUMN JAQA02.JAQA02ORDN is 'ORDEN';
COMMENT ON COLUMN JAQA02.JAQA02FEIN is 'FECHA INGRESO DE DATA';
COMMENT ON COLUMN JAQA02.JAQA02CBRT is 'CARTERA BRUTA';
COMMENT ON COLUMN JAQA02.JAQA02MSAL is 'META SALDO';
COMMENT ON COLUMN JAQA02.JAQA02NCTO is 'NÚMERO CRÉDITO TOTAL';
COMMENT ON COLUMN JAQA02.JAQA02NCLI is 'NÚMERO DE CLIENTES';
COMMENT ON COLUMN JAQA02.JAQA02MCLI is 'META CLIENTE';
COMMENT ON COLUMN JAQA02.JAQA02PJAT is 'PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA02.JAQA02CATR is 'CARTERA ATRASADA';
COMMENT ON COLUMN JAQA02.JAQA02MMOR is 'META MORA';
COMMENT ON COLUMN JAQA02.JAQA02PJMT is 'PORCENTAJE MAYOR A 30';
COMMENT ON COLUMN JAQA02.JAQA02SCMT is 'SALDO CAPITAL MAYOR A 30';
COMMENT ON COLUMN JAQA02.JAQA02SJUD is 'SALDO CAPITAL JUDICIAL';
COMMENT ON COLUMN JAQA02.JAQA02VMCB is 'VARIACIÓN MES CARTERA BRUTA';
COMMENT ON COLUMN JAQA02.JAQA02VMCL is 'VARIACIÓN MES CLIENTE';
COMMENT ON COLUMN JAQA02.JAQA02VMPA is 'VARIACIÓN MES PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA02.JAQA02VMAT is 'VARACIÓN MES ATRASADO';
COMMENT ON COLUMN JAQA02.JAQA02VDCB is 'VARIACIÓN DÍA CARTERA BRUTA';
COMMENT ON COLUMN JAQA02.JAQA02VDCL is 'VARIACIÓN DÍA CLIENTE';
COMMENT ON COLUMN JAQA02.JAQA02VDPA is 'VARIACIÓN DIA PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA02.JAQA02VDAT is 'VARIACIÓN DÍA ATRASADO';
COMMENT ON COLUMN JAQA02.JAQA02VSBR is 'VARIACIÓN SALDO BRUTO';
COMMENT ON COLUMN JAQA02.JAQA02VCBR is 'VARIACIÓN CLIENTE BRUTO';
COMMENT ON COLUMN JAQA02.JAQA02VMJU is 'VARIACIÓN META JUDICIAL';
COMMENT ON COLUMN JAQA02.JAQA02MCJU is 'META CARTERA JUDICIAL';
COMMENT ON COLUMN JAQA02.JAQA02NUM1 is 'AUXILIAR NUMÉRICO 1';
COMMENT ON COLUMN JAQA02.JAQA02NUM2 is 'AUXILIAR NUMÉRICO 2';
COMMENT ON COLUMN JAQA02.JAQA02NUM3 is 'AUXILIAR NUMÉRICO 3';
COMMENT ON COLUMN JAQA02.JAQA02IMP1 is 'AUXILIAR IMPORTE 1';
COMMENT ON COLUMN JAQA02.JAQA02IMP2 is 'AUXILIAR IMPORTE 2';
COMMENT ON COLUMN JAQA02.JAQA02IMP3 is 'AUXILIAR IMPORTE 3';
COMMENT ON COLUMN JAQA02.JAQA02CHA1 is 'AUXILIAR CARACTER 1';
COMMENT ON COLUMN JAQA02.JAQA02CHA2 is 'AUXILIAR CARACTER 2';
COMMENT ON COLUMN JAQA02.JAQA02CHA3 is 'AUXILIAR CARACTER 3';
COMMENT ON COLUMN JAQA02.JAQA02FEC1 is 'AUXILIAR FECHA 1';
COMMENT ON COLUMN JAQA02.JAQA02FEC2 is 'AUXILIAR FECHA 2';
COMMENT ON COLUMN JAQA02.JAQA02FEC3 is 'AUXILIAR FECHA 3';

COMMIT;

------------------------------------------------------------
-----------------------JAQA03-------------------------------
------------------------------------------------------------

CREATE TABLE JAQA03 
   (	JAQA03AGEN VARCHAR2(30) NOT NULL ENABLE, 
	JAQA03COMI VARCHAR2(2000) NOT NULL ENABLE, 
	JAQA03CBRT NUMBER(17,2) NOT NULL ENABLE, 
	JAQA03FEIN DATE, 
	JAQA03MSAL NUMBER(17,2), 
	JAQA03NCTO NUMBER(9,0), 
	JAQA03NCLI NUMBER(9,0), 
	JAQA03MCLI NUMBER(9,0), 
	JAQA03PJAT NUMBER(10,6), 
	JAQA03CATR NUMBER(17,2), 
	JAQA03PJMT NUMBER(10,6), 
	JAQA03SCMT NUMBER(17,2), 
	JAQA03SJUD NUMBER(17,2), 
	JAQA03VMCB NUMBER(17,2), 
	JAQA03VMCL NUMBER(9,0), 
	JAQA03VMPA NUMBER(10,6), 
	JAQA03VMAT NUMBER(17,2), 
	JAQA03MMOR NUMBER(17,2), 
	JAQA03VDCB NUMBER(17,2), 
	JAQA03VDCL NUMBER(4,0), 
	JAQA03VDPA NUMBER(10,6), 
	JAQA03VDAT NUMBER(9,0), 
	JAQA03VMJU NUMBER(17,2), 
	JAQA03MCJU NUMBER(17,2), 
	JAQA03NUM1 NUMBER(9,0), 
	JAQA03NUM2 NUMBER(9,0), 
	JAQA03NUM3 NUMBER(9,0), 
	JAQA03IMP1 NUMBER(17,2), 
	JAQA03IMP2 NUMBER(17,2), 
	JAQA03IMP3 NUMBER(17,2), 
	JAQA03CHA1 VARCHAR2(255), 
	JAQA03CHA2 VARCHAR2(255), 
	JAQA03CHA3 VARCHAR2(255), 
	JAQA03FEC1 DATE, 
	JAQA03FEC2 DATE, 
	JAQA03FEC3 DATE
	 
	) TABLESPACE BANTPROD_G;

ALTER TABLE JAQA03 ADD PRIMARY KEY (JAQA03AGEN, JAQA03COMI, JAQA03CBRT) USING INDEX TABLESPACE BANTPROD_G_IDX;

CREATE INDEX JAQA03A2 ON JAQA03 (JAQA03COMI, JAQA03CBRT) TABLESPACE BANTPROD_G_IDX;

COMMENT ON TABLE JAQA03 is 'Comité - Posicionamiento de Negocio';
COMMENT ON COLUMN JAQA03.JAQA03AGEN is 'AGENCIA';
COMMENT ON COLUMN JAQA03.JAQA03COMI is 'COMITE';
COMMENT ON COLUMN JAQA03.JAQA03CBRT is 'CARTERA BRUTA';
COMMENT ON COLUMN JAQA03.JAQA03FEIN is 'FECHA INGRESO DE DATA';
COMMENT ON COLUMN JAQA03.JAQA03MSAL is 'META SALDO';
COMMENT ON COLUMN JAQA03.JAQA03NCTO is 'NÚMERO CRÉDITO TOTAL';
COMMENT ON COLUMN JAQA03.JAQA03NCLI is 'NÚMERO DE CLIENTES';
COMMENT ON COLUMN JAQA03.JAQA03MCLI is 'META CLIENTE';
COMMENT ON COLUMN JAQA03.JAQA03PJAT is 'PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA03.JAQA03CATR is 'CARTERA ATRASADA';
COMMENT ON COLUMN JAQA03.JAQA03PJMT is 'PORCENTAJE MAYOR A 30';
COMMENT ON COLUMN JAQA03.JAQA03SCMT is 'SALDO CAPITAL MAYOR A 30';
COMMENT ON COLUMN JAQA03.JAQA03SJUD is 'SALDO JUDICIAL';
COMMENT ON COLUMN JAQA03.JAQA03VMCB is 'VARIACIÓN MES CARTERA BRUTA';
COMMENT ON COLUMN JAQA03.JAQA03VMCL is 'VARIACIÓN MES CLIENTE';
COMMENT ON COLUMN JAQA03.JAQA03VMPA is 'VARIACIÓN MES PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA03.JAQA03VMAT is 'VARIACIÓN MES ATRASADA';
COMMENT ON COLUMN JAQA03.JAQA03MMOR is 'META MORA';
COMMENT ON COLUMN JAQA03.JAQA03VDCB is 'VARIACIÓN DÍA CARTERA BRUTA';
COMMENT ON COLUMN JAQA03.JAQA03VDCL is 'VARIACIÓN DÍA CLIENTE';
COMMENT ON COLUMN JAQA03.JAQA03VDPA is 'VARIACIÓN DÍA PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA03.JAQA03VDAT is 'VARIACIÓN DÍA ATRASADO';
COMMENT ON COLUMN JAQA03.JAQA03VMJU is 'VARIACIÓN META JUDICIAL';
COMMENT ON COLUMN JAQA03.JAQA03MCJU is 'META CARTERA JUDICIAL';
COMMENT ON COLUMN JAQA03.JAQA03NUM1 is 'AUXILIAR NUMÉRICO 1';
COMMENT ON COLUMN JAQA03.JAQA03NUM2 is 'AUXILIAR NUMÉRICO 2';
COMMENT ON COLUMN JAQA03.JAQA03NUM3 is 'AUXILIAR NUMÉRICO 3';
COMMENT ON COLUMN JAQA03.JAQA03IMP1 is 'AUXILIAR IMPORTE 1';
COMMENT ON COLUMN JAQA03.JAQA03IMP2 is 'AUXILIAR IMPORTE 2';
COMMENT ON COLUMN JAQA03.JAQA03IMP3 is 'AUXILIAR IMPORTE 3';
COMMENT ON COLUMN JAQA03.JAQA03CHA1 is 'AUXILIAR CARACTER 1';
COMMENT ON COLUMN JAQA03.JAQA03CHA2 is 'AUXILIAR CARACTER 2';
COMMENT ON COLUMN JAQA03.JAQA03CHA3 is 'AUXILIAR CARACTER 3';
COMMENT ON COLUMN JAQA03.JAQA03FEC1 is 'AUXILIAR FECHA 1';
COMMENT ON COLUMN JAQA03.JAQA03FEC2 is 'AUXILIAR FECHA 2';
COMMENT ON COLUMN JAQA03.JAQA03FEC3 is 'AUXILIAR FECHA 3';

COMMIT;

------------------------------------------------------------
-----------------------JAQA04-------------------------------
------------------------------------------------------------

CREATE TABLE JAQA04 
   (	JAQA04REGI VARCHAR2(30) NOT NULL ENABLE, 
	JAQA04ZONA VARCHAR2(40) NOT NULL ENABLE, 
	JAQA04AGEN VARCHAR2(40) NOT NULL ENABLE, 
	JAQA04FEIN DATE, 
	JAQA04CBRT NUMBER(17,2), 
	JAQA04MVSA NUMBER(17,2), 
	JAQA04VSBR NUMBER(17,2), 
	JAQA04NCTO NUMBER(9,0), 
	JAQA04NCLI NUMBER(9,0), 
	JAQA04MVCL NUMBER(9,0), 
	JAQA04VCBR NUMBER(9,0), 
	JAQA04PJAT NUMBER(10,6), 
	JAQA04CATR NUMBER(17,2), 
	JAQA04MVMO NUMBER(17,2), 
	JAQA04VMSB NUMBER(17,2), 
	JAQA04PJMT NUMBER(10,6), 
	JAQA04SCMT NUMBER(17,2), 
	JAQA04SJUD NUMBER(17,2), 
	JAQA04VMCB NUMBER(17,2), 
	JAQA04VMCL NUMBER(9,0), 
	JAQA04VMPA NUMBER(10,6), 
	JAQA04VMAT NUMBER(17,2), 
	JAQA04VDCB NUMBER(17,2), 
	JAQA04VDCL NUMBER(4,0), 
	JAQA04VDPA NUMBER(10,6), 
	JAQA04VDAT NUMBER(17,2), 
	JAQA04VMJU NUMBER(17,2), 
	JAQA04MCJU NUMBER(17,2), 
	JAQA04NUM1 NUMBER(9,0), 
	JAQA04NUM2 NUMBER(9,0), 
	JAQA04NUM3 NUMBER(9,0), 
	JAQA04IMP1 NUMBER(17,2), 
	JAQA04IMP2 NUMBER(17,2), 
	JAQA04IMP3 NUMBER(17,2), 
	JAQA04CHA1 VARCHAR2(255), 
	JAQA04CHA2 VARCHAR2(255), 
	JAQA04CHA3 VARCHAR2(255), 
	JAQA04FEC1 DATE, 
	JAQA04FEC2 DATE, 
	JAQA04FEC3 DATE
	 
	) TABLESPACE BANTPROD_G;

ALTER TABLE JAQA04 ADD PRIMARY KEY (JAQA04REGI, JAQA04ZONA, JAQA04AGEN) USING INDEX TABLESPACE BANTPROD_G_IDX;

CREATE INDEX JAQA04A2 ON JAQA04 (JAQA04ZONA, JAQA04AGEN) TABLESPACE BANTPROD_G_IDX;
CREATE INDEX JAQA04A3 ON JAQA04 (JAQA04AGEN, JAQA04ZONA, JAQA04REGI) TABLESPACE BANTPROD_G_IDX;
CREATE INDEX JAQA04A4 ON JAQA04 (JAQA04ZONA, JAQA04REGI) TABLESPACE BANTPROD_G_IDX;

COMMENT ON TABLE JAQA04 is 'Agencia - Posicionamiento de Negocio';
COMMENT ON COLUMN JAQA04.JAQA04REGI is 'REGIÓN';
COMMENT ON COLUMN JAQA04.JAQA04ZONA is 'ZONA';
COMMENT ON COLUMN JAQA04.JAQA04AGEN is 'AGENCIA';
COMMENT ON COLUMN JAQA04.JAQA04FEIN is 'FECHA INGRESO DE DATA';
COMMENT ON COLUMN JAQA04.JAQA04CBRT is 'CARTERA BRUTA';
COMMENT ON COLUMN JAQA04.JAQA04MVSA is 'META VARIACIÓN SALDO';
COMMENT ON COLUMN JAQA04.JAQA04VSBR is 'VARIACIÓN SALDO BRUTO';
COMMENT ON COLUMN JAQA04.JAQA04NCTO is 'NÚMERO CRÉDITO TOTAL';
COMMENT ON COLUMN JAQA04.JAQA04NCLI is 'NÚMERO DE CLIENTES';
COMMENT ON COLUMN JAQA04.JAQA04MVCL is 'META VARIACIÓN CLIENTES';
COMMENT ON COLUMN JAQA04.JAQA04VCBR is 'VARIACIÓN CLIENTES BRUTO';
COMMENT ON COLUMN JAQA04.JAQA04PJAT is 'PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA04.JAQA04CATR is 'CARTERA ATRASADA';
COMMENT ON COLUMN JAQA04.JAQA04MVMO is 'META VARIACIÓN MORA';
COMMENT ON COLUMN JAQA04.JAQA04VMSB is 'VARIACIÓN MORA SBS';
COMMENT ON COLUMN JAQA04.JAQA04PJMT is 'PORCENTAJE MAYOR A 30';
COMMENT ON COLUMN JAQA04.JAQA04SCMT is 'SALDO CAPITAL MAYOR A 30';
COMMENT ON COLUMN JAQA04.JAQA04SJUD is 'SALDO JUDICIAL';
COMMENT ON COLUMN JAQA04.JAQA04VMCB is 'VARIACIÓN MES CARTERA BRUTA';
COMMENT ON COLUMN JAQA04.JAQA04VMCL is 'VARIACIÓN MES CLIENTE';
COMMENT ON COLUMN JAQA04.JAQA04VMPA is 'VARIACIÓN MES PORCENTAJE ATRASADA';
COMMENT ON COLUMN JAQA04.JAQA04VMAT is 'VARIACIÓN MES ATRASADA';
COMMENT ON COLUMN JAQA04.JAQA04VDCB is 'VARIACIÓN DÍA CARTERA BRUTA';
COMMENT ON COLUMN JAQA04.JAQA04VDCL is 'VARIACIÓN DÍA CLIENTE';
COMMENT ON COLUMN JAQA04.JAQA04VDPA is 'VARIACIÓN DÍA PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA04.JAQA04VDAT is 'VARIACIÓN DÍA ATRASADA';
COMMENT ON COLUMN JAQA04.JAQA04VMJU is 'VARIACIÓN META JUDICIAL';
COMMENT ON COLUMN JAQA04.JAQA04MCJU is 'META CARTERA JUDICIAL';
COMMENT ON COLUMN JAQA04.JAQA04NUM1 is 'AUXILIAR NUMÉRICO 1';
COMMENT ON COLUMN JAQA04.JAQA04NUM2 is 'AUXILIAR NUMÉRICO 2';
COMMENT ON COLUMN JAQA04.JAQA04NUM3 is 'AUXILIAR NUMÉRICO 3';
COMMENT ON COLUMN JAQA04.JAQA04IMP1 is 'AUXILIAR IMPORTE 1';
COMMENT ON COLUMN JAQA04.JAQA04IMP2 is 'AUXILIAR IMPORTE 2';
COMMENT ON COLUMN JAQA04.JAQA04IMP3 is 'AUXILIAR IMPORTE 3';
COMMENT ON COLUMN JAQA04.JAQA04CHA1 is 'AUXILIAR CARACTER 1';
COMMENT ON COLUMN JAQA04.JAQA04CHA2 is 'AUXILIAR CARACTER 2';
COMMENT ON COLUMN JAQA04.JAQA04CHA3 is 'AUXILIAR CARACTER 3';
COMMENT ON COLUMN JAQA04.JAQA04FEC1 is 'AUXILIAR FECHA 1';
COMMENT ON COLUMN JAQA04.JAQA04FEC2 is 'AUXILIAR FECHA 2';
COMMENT ON COLUMN JAQA04.JAQA04FEC3 is 'AUXILIAR FECHA 3';

COMMIT;

------------------------------------------------------------
-----------------------JAQA05-------------------------------
------------------------------------------------------------

CREATE TABLE JAQA05 
   (	JAQA05REGI VARCHAR2(30) NOT NULL ENABLE, 
	JAQA05ZONA VARCHAR2(40) NOT NULL ENABLE, 
	JAQA05FEIN DATE, 
	JAQA05CBRT NUMBER(17,2), 
	JAQA05MVSA NUMBER(17,2), 
	JAQA05VSBR NUMBER(17,2), 
	JAQA05NCTO NUMBER(9,0), 
	JAQA05NCLI NUMBER(9,0), 
	JAQA05MVCL NUMBER(9,0), 
	JAQA05VCBR NUMBER(9,0), 
	JAQA05PJAT NUMBER(10,6), 
	JAQA05CATR NUMBER(17,2), 
	JAQA05MVMO NUMBER(17,2), 
	JAQA05VMSB NUMBER(17,2), 
	JAQA05PJMT NUMBER(10,6), 
	JAQA05SCMT NUMBER(17,2), 
	JAQA05SJUD NUMBER(17,2), 
	JAQA05VMCB NUMBER(17,2), 
	JAQA05VMCL NUMBER(9,0), 
	JAQA05VMPA NUMBER(10,6), 
	JAQA05VMAT NUMBER(17,2), 
	JAQA05VDCB NUMBER(17,2), 
	JAQA05VDCL NUMBER(4,0), 
	JAQA05VDPA NUMBER(10,6), 
	JAQA05VDAT NUMBER(17,2), 
	JAQA05VMJU NUMBER(17,2), 
	JAQA05MCJU NUMBER(17,2), 
	JAQA05NUM1 NUMBER(9,0), 
	JAQA05NUM2 NUMBER(9,0), 
	JAQA05NUM3 NUMBER(9,0), 
	JAQA05IMP1 NUMBER(17,2), 
	JAQA05IMP2 NUMBER(17,2), 
	JAQA05IMP3 NUMBER(17,2), 
	JAQA05CHA1 VARCHAR2(255), 
	JAQA05CHA2 VARCHAR2(255), 
	JAQA05CHA3 VARCHAR2(255), 
	JAQA05FEC1 DATE, 
	JAQA05FEC2 DATE, 
	JAQA05FEC3 DATE	 
	)TABLESPACE BANTPROD_G;

ALTER TABLE JAQA05 ADD PRIMARY KEY (JAQA05REGI, JAQA05ZONA) USING INDEX TABLESPACE BANTPROD_G_IDX;

CREATE INDEX JAQA05A2 ON JAQA05 (JAQA05ZONA) TABLESPACE BANTPROD_G_IDX;

COMMENT ON TABLE JAQA05 is 'Zona - Posicionamiento de Negocio';
COMMENT ON COLUMN JAQA05.JAQA05REGI is 'REGIÓN';
COMMENT ON COLUMN JAQA05.JAQA05ZONA is 'ZONA';
COMMENT ON COLUMN JAQA05.JAQA05FEIN is 'FECHA INGRESO DE DATA';
COMMENT ON COLUMN JAQA05.JAQA05CBRT is 'CARTERA BRUTA';
COMMENT ON COLUMN JAQA05.JAQA05MVSA is 'META VARIACIÓN SALDO';
COMMENT ON COLUMN JAQA05.JAQA05VSBR is 'VARIACIÓN SALDO BRUTO';
COMMENT ON COLUMN JAQA05.JAQA05NCTO is 'NÚMERO DE CRÉDITO TOTAL';
COMMENT ON COLUMN JAQA05.JAQA05NCLI is 'NÚMERO DE CLIENTES';
COMMENT ON COLUMN JAQA05.JAQA05MVCL is 'META VARIACIÓN CLIENTES';
COMMENT ON COLUMN JAQA05.JAQA05VCBR is 'VARIACIÓN CLIENTE BRUTO';
COMMENT ON COLUMN JAQA05.JAQA05PJAT is 'PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA05.JAQA05CATR is 'CARTERA ATRASADA';
COMMENT ON COLUMN JAQA05.JAQA05MVMO is 'META VARIACIÓN MORA';
COMMENT ON COLUMN JAQA05.JAQA05VMSB is 'VARIACIÓN MORA SBS';
COMMENT ON COLUMN JAQA05.JAQA05PJMT is 'PORCENTAJE MAYOR A 30';
COMMENT ON COLUMN JAQA05.JAQA05SCMT is 'SALDO CAPITAL MAYOR A 30';
COMMENT ON COLUMN JAQA05.JAQA05SJUD is 'SALDO JUDICIAL';
COMMENT ON COLUMN JAQA05.JAQA05VMCB is 'VARIACIÓN MES CARTERA BRUTA';
COMMENT ON COLUMN JAQA05.JAQA05VMCL is 'VARIACIÓN MES CLIENTE';
COMMENT ON COLUMN JAQA05.JAQA05VMPA is 'VARIACIÓN MES PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA05.JAQA05VMAT is 'VARIACIÓN MES ATRASADO';
COMMENT ON COLUMN JAQA05.JAQA05VDCB is 'VARIACIÓN DÍA CARTERA BRUTA';
COMMENT ON COLUMN JAQA05.JAQA05VDCL is 'VARIACIÓN DÍA CLIENTE';
COMMENT ON COLUMN JAQA05.JAQA05VDPA is 'VARIACIÓN DÍA PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA05.JAQA05VDAT is 'VARIACIÓN DÍA ATRASADO';
COMMENT ON COLUMN JAQA05.JAQA05VMJU is 'VARIACIÓN META JUDICIAL';
COMMENT ON COLUMN JAQA05.JAQA05MCJU is 'META CARTERA JUDICIAL';
COMMENT ON COLUMN JAQA05.JAQA05NUM1 is 'AUXILIAR NUMÉRICO 1';
COMMENT ON COLUMN JAQA05.JAQA05NUM2 is 'AUXILIAR NUMÉRICO 2';
COMMENT ON COLUMN JAQA05.JAQA05NUM3 is 'AUXILIAR NUMÉRICO 3';
COMMENT ON COLUMN JAQA05.JAQA05IMP1 is 'AUXILIAR IMPORTE 1';
COMMENT ON COLUMN JAQA05.JAQA05IMP2 is 'AUXILIAR IMPORTE 2';
COMMENT ON COLUMN JAQA05.JAQA05IMP3 is 'AUXILIAR IMPORTE 3';
COMMENT ON COLUMN JAQA05.JAQA05CHA1 is 'AUXILIAR CARACTER 1';
COMMENT ON COLUMN JAQA05.JAQA05CHA2 is 'AUXILIAR CARACTER 2';
COMMENT ON COLUMN JAQA05.JAQA05CHA3 is 'AUXILIAR CARACTER 3';
COMMENT ON COLUMN JAQA05.JAQA05FEC1 is 'AUXILIAR FECHA 1';
COMMENT ON COLUMN JAQA05.JAQA05FEC2 is 'AUXILIAR FECHA 2';
COMMENT ON COLUMN JAQA05.JAQA05FEC3 is 'AUXILIAR FECHA 3';

COMMIT;

------------------------------------------------------------
-----------------------JAQA06-------------------------------
------------------------------------------------------------

CREATE TABLE JAQA06 
   (	JAQA06REGI VARCHAR2(30) NOT NULL ENABLE, 
	JAQA06FEIN DATE, 
	JAQA06CBRT NUMBER(17,2), 
	JAQA06MVSA NUMBER(17,2), 
	JAQA06PASB NUMBER(10,6), 
	JAQA06NCTO NUMBER(9,0), 
	JAQA06NCLI NUMBER(9,0), 
	JAQA06MVCL NUMBER(9,0), 
	JAQA06PACL NUMBER(10,6), 
	JAQA06PJAT NUMBER(10,6), 
	JAQA06CATR NUMBER(17,2), 
	JAQA06MVMO NUMBER(17,2), 
	JAQA06PJMT NUMBER(10,6), 
	JAQA06SCMT NUMBER(17,2), 
	JAQA06SJUD NUMBER(17,2), 
	JAQA06VMCB NUMBER(17,2), 
	JAQA06VMCL NUMBER(9,0), 
	JAQA06VMPA NUMBER(10,6), 
	JAQA06VMAT NUMBER(17,2), 
	JAQA06VDCB NUMBER(17,2), 
	JAQA06VDCL NUMBER(4,0), 
	JAQA06VDPA NUMBER(10,6), 
	JAQA06VDAT NUMBER(17,2), 
	JAQA06VMJU NUMBER(17,2), 
	JAQA06MCJU NUMBER(17,2), 
	JAQA06NUM1 NUMBER(9,0), 
	JAQA06NUM2 NUMBER(9,0), 
	JAQA06NUM3 NUMBER(9,0), 
	JAQA06IMP1 NUMBER(17,2), 
	JAQA06IMP2 NUMBER(17,2), 
	JAQA06IMP3 NUMBER(17,2), 
	JAQA06CHA1 VARCHAR2(255), 
	JAQA06CHA2 VARCHAR2(255), 
	JAQA06CHA3 VARCHAR2(255), 
	JAQA06FEC1 DATE, 
	JAQA06FEC2 DATE, 
	JAQA06FEC3 DATE 
	 
	) TABLESPACE BANTPROD_G;

ALTER TABLE JAQA06 ADD PRIMARY KEY (JAQA06REGI) USING INDEX TABLESPACE BANTPROD_G_IDX;

CREATE INDEX JAQA06A2 ON JAQA06 (JAQA06CBRT) TABLESPACE BANTPROD_G_IDX;

COMMENT ON TABLE JAQA06 is 'Región - Posicionamiento de Negocio';
COMMENT ON COLUMN JAQA06.JAQA06REGI is 'REGIÓN';
COMMENT ON COLUMN JAQA06.JAQA06FEIN is 'FECHA INGRESO DE DATA';
COMMENT ON COLUMN JAQA06.JAQA06CBRT is 'CARTERA BRUTA';
COMMENT ON COLUMN JAQA06.JAQA06MVSA is 'META VARIACIÓN SALDO';
COMMENT ON COLUMN JAQA06.JAQA06PASB is 'PORCENTAJE AVANCE SALDO BRUTO';
COMMENT ON COLUMN JAQA06.JAQA06NCTO is 'NÚMERO CRÉDITO TOTAL';
COMMENT ON COLUMN JAQA06.JAQA06NCLI is 'NÚMERO DE CLIENTES';
COMMENT ON COLUMN JAQA06.JAQA06MVCL is 'META VARIACIÓN CLIENTES';
COMMENT ON COLUMN JAQA06.JAQA06PACL is 'PORCENTAJE AVANCE CLIENTES';
COMMENT ON COLUMN JAQA06.JAQA06PJAT is 'PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA06.JAQA06CATR is 'CARTERA ATRASADA';
COMMENT ON COLUMN JAQA06.JAQA06MVMO is 'META VARACIÓN MORA';
COMMENT ON COLUMN JAQA06.JAQA06PJMT is 'PORCENTAJE MAYOR A 30';
COMMENT ON COLUMN JAQA06.JAQA06SCMT is 'SALDO CAPITAL MAYORA A 30';
COMMENT ON COLUMN JAQA06.JAQA06SJUD is 'SALDO JUDICIAL';
COMMENT ON COLUMN JAQA06.JAQA06VMCB is 'VARIACIÓN MES CARTERA BRUTA';
COMMENT ON COLUMN JAQA06.JAQA06VMCL is 'VARIACIÓN MES CLIENTE';
COMMENT ON COLUMN JAQA06.JAQA06VMPA is 'VARIACIÓN MES PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA06.JAQA06VMAT is 'VARIACIÓN MES ATRASADO';
COMMENT ON COLUMN JAQA06.JAQA06VDCB is 'VARIACIÓN DÍA CARTERA BRUTA';
COMMENT ON COLUMN JAQA06.JAQA06VDCL is 'VARIACIÓN DÍA CLIENTE';
COMMENT ON COLUMN JAQA06.JAQA06VDPA is 'VARIACIÓN DÍA PORCENTAJE ATRASADO';
COMMENT ON COLUMN JAQA06.JAQA06VDAT is 'VARIACIÓN DÍA ATRASADO';
COMMENT ON COLUMN JAQA06.JAQA06VMJU is 'VARIACIÓN META JUDICIAL';
COMMENT ON COLUMN JAQA06.JAQA06MCJU is 'META CARTERA JUDICIAL';
COMMENT ON COLUMN JAQA06.JAQA06NUM1 is 'AUXILIAR NUMÉRICO 1';
COMMENT ON COLUMN JAQA06.JAQA06NUM2 is 'AUXILIAR NUMÉRICO 2';
COMMENT ON COLUMN JAQA06.JAQA06NUM3 is 'AUXILIAR NUMÉRICO 3';
COMMENT ON COLUMN JAQA06.JAQA06IMP1 is 'AUXILIAR IMPORTE 1';
COMMENT ON COLUMN JAQA06.JAQA06IMP2 is 'AUXILIAR IMPORTE 2';
COMMENT ON COLUMN JAQA06.JAQA06IMP3 is 'AUXILIAR IMPORTE 3';
COMMENT ON COLUMN JAQA06.JAQA06CHA1 is 'AUXILIAR CARACTER 1';
COMMENT ON COLUMN JAQA06.JAQA06CHA2 is 'AUXILIAR CARACTER 2';
COMMENT ON COLUMN JAQA06.JAQA06CHA3 is 'AUXILIAR CARACTER 3';
COMMENT ON COLUMN JAQA06.JAQA06FEC1 is 'AUXILIAR FECHA 1';
COMMENT ON COLUMN JAQA06.JAQA06FEC2 is 'AUXILIAR FECHA 2';
COMMENT ON COLUMN JAQA06.JAQA06FEC3 is 'AUXILIAR FECHA 3';

COMMIT;