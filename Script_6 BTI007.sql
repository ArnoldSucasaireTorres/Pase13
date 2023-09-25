---------------------------------------------------
----------- PERMISO DE USUARIOS ---------------
---------------------------------------------------
--POSICION DE NEGOCIOS--mas comentarios
Delete from BTI007 Where BTICANNOM = 'MMISTI' and BTINOM = 'CMACMISTI' and BTISRVNOM = 'CMACPosicionNegocio'; -- 0

INSERT INTO BANTPROD.BTI007 (BTICANNOM, BTINOM, BTISRVNOM, BTISRVVER, BTIMTDNOM, BTIEXTUSU, BTIUSUHAB)
SELECT 'MMISTI', 'CMACMISTI', 'CMACPosicionNegocio', '1', '*TODOS', TRIM(UPPER(BTIEXTUSU)), 'S'
FROM BANTPROD.BTI001
WHERE BTICANNOM = 'MMISTI'
GROUP BY TRIM(UPPER(BTIEXTUSU));

COMMIT;

