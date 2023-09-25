create or replace PROCEDURE COPY_JAQM951_BANDEJA_ARQUITECTURA
AS
BEGIN

  DELETE FROM bantprod.JAQM951 WHERE JAQM951FEC <= to_date(sysdate-5, 'DD-MM-YY');
  INSERT INTO  bantprod.JAQM951(JAQM951FEC,JAQM951HOR,JAQM951ANL,JAQM951SUC,JAQM951REG,JAQM951ZON,JAQM951COM,JAQM951SCD,JAQM951SCA,JAQM951RPD,JAQM951AMS,JAQM951MSC,JAQM951NCC,JAQM951NCI,JAQM951DCC,JAQM951AAC,JAQM951VCT,JAQM951AMC,JAQM951MTC,JAQM951MIM,JAQM951VVM,JAQM951PVM,JAQM951MSA,JAQM951MCD,JAQM951ACD,JAQM951PVC,JAQM951PCA,JAQM951NU1,JAQM951NU2,JAQM951NU3,JAQM951IM1,JAQM951IM2,JAQM951IM3,JAQM951CH1,JAQM951CH2,JAQM951CH3,JAQM951VA1,JAQM951VA2,JAQM951VA3,JAQM951FE1,JAQM951FE2,JAQM951FE3)
  select JAQM951FEC,JAQM951HOR,JAQM951ANL,JAQM951SUC,JAQM951REG,JAQM951ZON,JAQM951COM,JAQM951SCD,JAQM951SCA,JAQM951RPD,JAQM951AMS,JAQM951MSC,JAQM951NCC,JAQM951NCI,JAQM951DCC,JAQM951AAC,JAQM951VCT,JAQM951AMC,JAQM951MTC,JAQM951MIM,JAQM951VVM,JAQM951PVM,JAQM951MSA,JAQM951MCD,JAQM951ACD,JAQM951PVC,JAQM951PCA,JAQM951NU1,JAQM951NU2,JAQM951NU3,JAQM951IM1,JAQM951IM2,JAQM951IM3,JAQM951CH1,JAQM951CH2,JAQM951CH3,JAQM951VA1,JAQM951VA2,JAQM951VA3,JAQM951FE1,JAQM951FE2,JAQM951FE3 from JAQM951 WHERE JAQM951FEC = to_date(sysdate, 'DD-MM-YY') and JAQM951HOR >= TO_CHAR(sysdate - (1/24), 'HH24:MI:SS');
  COMMIT;
  
  --POSICION DE NEGOCIOS
  delete FROM bantprod.JAQA02; COMMIT;
  INSERT INTO bantprod."JAQA02"(JAQA02CCAN,JAQA02CANA,JAQA02ORDN,JAQA02FEIN,JAQA02CBRT,JAQA02MSAL,JAQA02NCTO,JAQA02NCLI,JAQA02MCLI,JAQA02PJAT,JAQA02CATR,JAQA02MMOR,JAQA02PJMT,JAQA02SCMT,JAQA02SJUD,JAQA02VMCB,JAQA02VMCL,JAQA02VMPA,JAQA02VMAT,JAQA02VDCB,JAQA02VDCL,JAQA02VDPA,JAQA02VDAT,JAQA02VSBR,JAQA02VCBR,JAQA02VMJU,JAQA02MCJU,JAQA02NUM1,JAQA02NUM2,JAQA02NUM3,JAQA02IMP1,JAQA02IMP2,JAQA02IMP3,JAQA02CHA1,JAQA02CHA2,JAQA02CHA3,JAQA02FEC1,JAQA02FEC2,JAQA02FEC3)
  select JAQA02CCAN,JAQA02CANA,JAQA02ORDN,JAQA02FEIN,JAQA02CBRT,JAQA02MSAL,JAQA02NCTO,JAQA02NCLI,JAQA02MCLI,JAQA02PJAT,JAQA02CATR,JAQA02MMOR,JAQA02PJMT,JAQA02SCMT,JAQA02SJUD,JAQA02VMCB,JAQA02VMCL,JAQA02VMPA,JAQA02VMAT,JAQA02VDCB,JAQA02VDCL,JAQA02VDPA,JAQA02VDAT,JAQA02VSBR,JAQA02VCBR,JAQA02VMJU,JAQA02MCJU,JAQA02NUM1,JAQA02NUM2,JAQA02NUM3,JAQA02IMP1,JAQA02IMP2,JAQA02IMP3,JAQA02CHA1,JAQA02CHA2,JAQA02CHA3,JAQA02FEC1,JAQA02FEC2,JAQA02FEC3 from JAQA02; --WHERE JAQM951FEC = to_date(sysdate, 'DD-MM-YY') and JAQM951HOR >= TO_CHAR(sysdate - (1/24), 'HH24:MI:SS');
  COMMIT; 
  
  delete FROM bantprod.JAQA03; COMMIT;
  INSERT INTO bantprod."JAQA03"(JAQA03AGEN,JAQA03COMI,JAQA03CBRT,JAQA03FEIN,JAQA03MSAL,JAQA03NCTO,JAQA03NCLI,JAQA03MCLI,JAQA03PJAT,JAQA03CATR,JAQA03PJMT,JAQA03SCMT,JAQA03SJUD,JAQA03VMCB,JAQA03VMCL,JAQA03VMPA,JAQA03VMAT,JAQA03MMOR,JAQA03VDCB,JAQA03VDCL,JAQA03VDPA,JAQA03VDAT,JAQA03VMJU,JAQA03MCJU,JAQA03NUM1,JAQA03NUM2,JAQA03NUM3,JAQA03IMP1,JAQA03IMP2,JAQA03IMP3,JAQA03CHA1,JAQA03CHA2,JAQA03CHA3,JAQA03FEC1,JAQA03FEC2,JAQA03FEC3)
  select JAQA03AGEN,JAQA03COMI,JAQA03CBRT,JAQA03FEIN,JAQA03MSAL,JAQA03NCTO,JAQA03NCLI,JAQA03MCLI,JAQA03PJAT,JAQA03CATR,JAQA03PJMT,JAQA03SCMT,JAQA03SJUD,JAQA03VMCB,JAQA03VMCL,JAQA03VMPA,JAQA03VMAT,JAQA03MMOR,JAQA03VDCB,JAQA03VDCL,JAQA03VDPA,JAQA03VDAT,JAQA03VMJU,JAQA03MCJU,JAQA03NUM1,JAQA03NUM2,JAQA03NUM3,JAQA03IMP1,JAQA03IMP2,JAQA03IMP3,JAQA03CHA1,JAQA03CHA2,JAQA03CHA3,JAQA03FEC1,JAQA03FEC2,JAQA03FEC3 from JAQA03; --WHERE JAQM951FEC = to_date(sysdate, 'DD-MM-YY') and JAQM951HOR >= TO_CHAR(sysdate - (1/24), 'HH24:MI:SS');
  COMMIT;
  
  delete FROM bantprod.JAQA04; COMMIT;
  INSERT INTO bantprod."JAQA04"(JAQA04REGI,JAQA04ZONA,JAQA04AGEN,JAQA04FEIN,JAQA04CBRT,JAQA04MVSA,JAQA04VSBR,JAQA04NCTO,JAQA04NCLI,JAQA04MVCL,JAQA04VCBR,JAQA04PJAT,JAQA04CATR,JAQA04MVMO,JAQA04VMSB,JAQA04PJMT,JAQA04SCMT,JAQA04SJUD,JAQA04VMCB,JAQA04VMCL,JAQA04VMPA,JAQA04VMAT,JAQA04VDCB,JAQA04VDCL,JAQA04VDPA,JAQA04VDAT,JAQA04VMJU,JAQA04MCJU,JAQA04NUM1,JAQA04NUM2,JAQA04NUM3,JAQA04IMP1,JAQA04IMP2,JAQA04IMP3,JAQA04CHA1,JAQA04CHA2,JAQA04CHA3,JAQA04FEC1,JAQA04FEC2,JAQA04FEC3)
  select JAQA04REGI,JAQA04ZONA,JAQA04AGEN,JAQA04FEIN,JAQA04CBRT,JAQA04MVSA,JAQA04VSBR,JAQA04NCTO,JAQA04NCLI,JAQA04MVCL,JAQA04VCBR,JAQA04PJAT,JAQA04CATR,JAQA04MVMO,JAQA04VMSB,JAQA04PJMT,JAQA04SCMT,JAQA04SJUD,JAQA04VMCB,JAQA04VMCL,JAQA04VMPA,JAQA04VMAT,JAQA04VDCB,JAQA04VDCL,JAQA04VDPA,JAQA04VDAT,JAQA04VMJU,JAQA04MCJU,JAQA04NUM1,JAQA04NUM2,JAQA04NUM3,JAQA04IMP1,JAQA04IMP2,JAQA04IMP3,JAQA04CHA1,JAQA04CHA2,JAQA04CHA3,JAQA04FEC1,JAQA04FEC2,JAQA04FEC3 from JAQA04; --WHERE JAQM951FEC = to_date(sysdate, 'DD-MM-YY') and JAQM951HOR >= TO_CHAR(sysdate - (1/24), 'HH24:MI:SS');
  COMMIT;
  
  delete FROM bantprod.JAQA05; COMMIT;
  INSERT INTO bantprod."JAQA05"(JAQA05REGI,JAQA05ZONA,JAQA05FEIN,JAQA05CBRT,JAQA05MVSA,JAQA05VSBR,JAQA05NCTO,JAQA05NCLI,JAQA05MVCL,JAQA05VCBR,JAQA05PJAT,JAQA05CATR,JAQA05MVMO,JAQA05VMSB,JAQA05PJMT,JAQA05SCMT,JAQA05SJUD,JAQA05VMCB,JAQA05VMCL,JAQA05VMPA,JAQA05VMAT,JAQA05VDCB,JAQA05VDCL,JAQA05VDPA,JAQA05VDAT,JAQA05VMJU,JAQA05MCJU,JAQA05NUM1,JAQA05NUM2,JAQA05NUM3,JAQA05IMP1,JAQA05IMP2,JAQA05IMP3,JAQA05CHA1,JAQA05CHA2,JAQA05CHA3,JAQA05FEC1,JAQA05FEC2,JAQA05FEC3)
  select JAQA05REGI,JAQA05ZONA,JAQA05FEIN,JAQA05CBRT,JAQA05MVSA,JAQA05VSBR,JAQA05NCTO,JAQA05NCLI,JAQA05MVCL,JAQA05VCBR,JAQA05PJAT,JAQA05CATR,JAQA05MVMO,JAQA05VMSB,JAQA05PJMT,JAQA05SCMT,JAQA05SJUD,JAQA05VMCB,JAQA05VMCL,JAQA05VMPA,JAQA05VMAT,JAQA05VDCB,JAQA05VDCL,JAQA05VDPA,JAQA05VDAT,JAQA05VMJU,JAQA05MCJU,JAQA05NUM1,JAQA05NUM2,JAQA05NUM3,JAQA05IMP1,JAQA05IMP2,JAQA05IMP3,JAQA05CHA1,JAQA05CHA2,JAQA05CHA3,JAQA05FEC1,JAQA05FEC2,JAQA05FEC3 from JAQA05; --WHERE JAQM951FEC = to_date(sysdate, 'DD-MM-YY') and JAQM951HOR >= TO_CHAR(sysdate - (1/24), 'HH24:MI:SS');
  COMMIT;
  
  delete FROM bantprod.JAQA06; COMMIT;
  INSERT INTO bantprod."JAQA06"(JAQA06REGI,JAQA06FEIN,JAQA06CBRT,JAQA06MVSA,JAQA06PASB,JAQA06NCTO,JAQA06NCLI,JAQA06MVCL,JAQA06PACL,JAQA06PJAT,JAQA06CATR,JAQA06MVMO,JAQA06PJMT,JAQA06SCMT,JAQA06SJUD,JAQA06VMCB,JAQA06VMCL,JAQA06VMPA,JAQA06VMAT,JAQA06VDCB,JAQA06VDCL,JAQA06VDPA,JAQA06VDAT,JAQA06VMJU,JAQA06MCJU,JAQA06NUM1,JAQA06NUM2,JAQA06NUM3,JAQA06IMP1,JAQA06IMP2,JAQA06IMP3,JAQA06CHA1,JAQA06CHA2,JAQA06CHA3,JAQA06FEC1,JAQA06FEC2,JAQA06FEC3)
  select JAQA06REGI,JAQA06FEIN,JAQA06CBRT,JAQA06MVSA,JAQA06PASB,JAQA06NCTO,JAQA06NCLI,JAQA06MVCL,JAQA06PACL,JAQA06PJAT,JAQA06CATR,JAQA06MVMO,JAQA06PJMT,JAQA06SCMT,JAQA06SJUD,JAQA06VMCB,JAQA06VMCL,JAQA06VMPA,JAQA06VMAT,JAQA06VDCB,JAQA06VDCL,JAQA06VDPA,JAQA06VDAT,JAQA06VMJU,JAQA06MCJU,JAQA06NUM1,JAQA06NUM2,JAQA06NUM3,JAQA06IMP1,JAQA06IMP2,JAQA06IMP3,JAQA06CHA1,JAQA06CHA2,JAQA06CHA3,JAQA06FEC1,JAQA06FEC2,JAQA06FEC3 from JAQA06; --WHERE JAQM951FEC = to_date(sysdate, 'DD-MM-YY') and JAQM951HOR >= TO_CHAR(sysdate - (1/24), 'HH24:MI:SS');
  COMMIT;

  --CREDITOS DESEMBOLSAR
  DELETE FROM bantprod.JAQM60; COMMIT;
  INSERT INTO bantprod.JAQM60 (JAQM60CANA, JAQM60COAN, JAQM60CACL, JAQM60MONT, JAQM60FEIN, JAQM60NUM1, JAQM60NUM2, JAQM60IMP1, JAQM60IMP2, JAQM60VAR1, JAQM60VAR2, JAQM60FEC1, JAQM60FEC2)
  SELECT JAQM60CANA, JAQM60COAN, JAQM60CACL, JAQM60MONT, JAQM60FEIN, JAQM60NUM1, JAQM60NUM2, JAQM60IMP1, JAQM60IMP2, JAQM60VAR1, JAQM60VAR2, JAQM60FEC1, JAQM60FEC2 FROM JAQM60;
  COMMIT;
  
  DELETE FROM bantprod.JAQM6B; COMMIT;
  INSERT INTO bantprod.JAQM6B (JAQM6BAGEN, JAQM6BCOMI, JAQM6BCACL, JAQM6BMONT, JAQM6BFEIN, JAQM6BNUM1, JAQM6BNUM2, JAQM6BIMP1, JAQM6BIMP2, JAQM6BVAR1, JAQM6BVAR2, JAQM6BFEC1, JAQM6BFEC2)
  SELECT JAQM6BAGEN, JAQM6BCOMI, JAQM6BCACL, JAQM6BMONT, JAQM6BFEIN, JAQM6BNUM1, JAQM6BNUM2, JAQM6BIMP1, JAQM6BIMP2, JAQM6BVAR1, JAQM6BVAR2, JAQM6BFEC1, JAQM6BFEC2 FROM JAQM6B;
  COMMIT;
  
  DELETE FROM bantprod.JAQM6C; COMMIT;
  INSERT INTO bantprod.JAQM6C (JAQM6CREGI, JAQM6CZONA, JAQM6CAGEN, JAQM6CCACL, JAQM6CMONT, JAQM6CFEIN, JAQM6CNUM1, JAQM6CNUM2, JAQM6CIMP1, JAQM6CIMP2, JAQM6CVAR1, JAQM6CVAR2, JAQM6CFEC1, JAQM6CFEC2)
  SELECT JAQM6CREGI, JAQM6CZONA, JAQM6CAGEN, JAQM6CCACL, JAQM6CMONT, JAQM6CFEIN, JAQM6CNUM1, JAQM6CNUM2, JAQM6CIMP1, JAQM6CIMP2, JAQM6CVAR1, JAQM6CVAR2, JAQM6CFEC1, JAQM6CFEC2 FROM JAQM6C;
  COMMIT;
  
  DELETE FROM bantprod.JAQM6D; COMMIT;
  INSERT INTO bantprod.JAQM6D (JAQM6DREGI, JAQM6DZONA, JAQM6DCACL, JAQM6DMONT, JAQM6DFEIN, JAQM6DNUM1, JAQM6DNUM2, JAQM6DIMP1, JAQM6DIMP2, JAQM6DVAR1, JAQM6DVAR2, JAQM6DFEC1, JAQM6DFEC2)
  SELECT JAQM6DREGI, JAQM6DZONA, JAQM6DCACL, JAQM6DMONT, JAQM6DFEIN, JAQM6DNUM1, JAQM6DNUM2, JAQM6DIMP1, JAQM6DIMP2, JAQM6DVAR1, JAQM6DVAR2, JAQM6DFEC1, JAQM6DFEC2 FROM JAQM6D;
  COMMIT;
  
  DELETE FROM bantprod.JAQM6E; COMMIT;
  INSERT INTO bantprod.JAQM6E (JAQM6EREGI, JAQM6ECACL, JAQM6EMONT, JAQM6EFEIN, JAQM6ENUM1, JAQM6ENUM2, JAQM6EIMP1, JAQM6EIMP2, JAQM6EVAR1, JAQM6EVAR2, JAQM6EFEC1, JAQM6EFEC2)
  SELECT JAQM6EREGI, JAQM6ECACL, JAQM6EMONT, JAQM6EFEIN, JAQM6ENUM1, JAQM6ENUM2, JAQM6EIMP1, JAQM6EIMP2, JAQM6EVAR1, JAQM6EVAR2, JAQM6EFEC1, JAQM6EFEC2 FROM JAQM6E;
  COMMIT;

  --MORA SBS

  DELETE FROM bantprod.JAQM06; COMMIT;
  INSERT INTO bantprod.JAQM06 (JAQM06CANA, JAQM06COAN, JAQM06CACL, JAQM06MSBS, JAQM06FEIN, JAQM06NUM1, JAQM06NUM2, JAQM06IMP1, JAQM06IMP2, JAQM06VAR1, JAQM06VAR2, JAQM06FEC1, JAQM06FEC2)
  SELECT JAQM06CANA, JAQM06COAN, JAQM06CACL, JAQM06MSBS, JAQM06FEIN, JAQM06NUM1, JAQM06NUM2, JAQM06IMP1, JAQM06IMP2, JAQM06VAR1, JAQM06VAR2, JAQM06FEC1, JAQM06FEC2 FROM JAQM06;
  COMMIT;
  
  DELETE FROM bantprod.JAQMB6; COMMIT;
  INSERT INTO bantprod.JAQMB6 (JAQMB6AGEN, JAQMB6COMI, JAQMB6CACL, JAQMB6MSBS, JAQMB6FEIN, JAQMB6NUM1, JAQMB6NUM2, JAQMB6IMP1, JAQMB6IMP2, JAQMB6VAR1, JAQMB6VAR2, JAQMB6FEC1, JAQMB6FEC2)
  SELECT JAQMB6AGEN, JAQMB6COMI, JAQMB6CACL, JAQMB6MSBS, JAQMB6FEIN, JAQMB6NUM1, JAQMB6NUM2, JAQMB6IMP1, JAQMB6IMP2, JAQMB6VAR1, JAQMB6VAR2, JAQMB6FEC1, JAQMB6FEC2 FROM JAQMB6;
  COMMIT;
  
  DELETE FROM bantprod.JAQMC6; COMMIT;
  INSERT INTO bantprod.JAQMC6 (JAQMC6REGI, JAQMC6ZONA, JAQMC6AGEN, JAQMC6CACL, JAQMC6MSBS, JAQMC6FEIN, JAQMC6NUM1, JAQMC6NUM2, JAQMC6IMP1, JAQMC6IMP2, JAQMC6VAR1, JAQMC6VAR2, JAQMC6FEC1, JAQMC6FEC2)
  SELECT JAQMC6REGI, JAQMC6ZONA, JAQMC6AGEN, JAQMC6CACL, JAQMC6MSBS, JAQMC6FEIN, JAQMC6NUM1, JAQMC6NUM2, JAQMC6IMP1, JAQMC6IMP2, JAQMC6VAR1, JAQMC6VAR2, JAQMC6FEC1, JAQMC6FEC2 FROM JAQMC6;
  COMMIT;
  
  DELETE FROM bantprod.JAQMD6; COMMIT;
  INSERT INTO bantprod.JAQMD6 (JAQMD6REGI, JAQMD6ZONA, JAQMD6CACL, JAQMD6MSBS, JAQMD6FEIN, JAQMD6NUM1, JAQMD6NUM2, JAQMD6IMP1, JAQMD6IMP2, JAQMD6VAR1, JAQMD6VAR2, JAQMD6FEC1, JAQMD6FEC2)
  SELECT JAQMD6REGI, JAQMD6ZONA, JAQMD6CACL, JAQMD6MSBS, JAQMD6FEIN, JAQMD6NUM1, JAQMD6NUM2, JAQMD6IMP1, JAQMD6IMP2, JAQMD6VAR1, JAQMD6VAR2, JAQMD6FEC1, JAQMD6FEC2 FROM JAQMD6;
  COMMIT;
  
  DELETE FROM bantprod.JAQME6; COMMIT;
  INSERT INTO bantprod.JAQME6 (JAQME6REGI, JAQME6CACL, JAQME6MSBS, JAQME6FEIN, JAQME6NUM1, JAQME6NUM2, JAQME6IMP1, JAQME6IMP2, JAQME6VAR1, JAQME6VAR2, JAQME6FEC1, JAQME6FEC2)
  SELECT JAQME6REGI, JAQME6CACL, JAQME6MONT, JAQME6FEIN, JAQME6NUM1, JAQME6NUM2, JAQME6IMP1, JAQME6IMP2, JAQME6VAR1, JAQME6VAR2, JAQME6FEC1, JAQME6FEC2 FROM JAQME6;
  COMMIT;
  
END COPY_JAQM951_BANDEJA_ARQUITECTURA;