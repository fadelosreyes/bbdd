--a
SELECT *
FROM PLAN P 
WHERE UPPER(ENT_FINANCIERA) = 'BBVA';

--b
SELECT *
FROM INVESTIGADOR I 
WHERE UPPER(CIUDAD) = 'CÁDIZ'; 

--c
SELECT *
FROM INVESTIGADOR I 
WHERE TELEFONO is null;

--d
SELECT *
FROM INVESTIGADOR I 
WHERE UPPER(CIUDAD) = 'CÁDIZ' and TELEFONO is null;

--e
SELECT *
FROM INVESTIGADOR I 
WHERE UPPER(CIUDAD) = 'CÁDIZ' or UPPER(CIUDAD) = 'JEREZ';

--f
SELECT *
FROM INVESTIGADOR I 
WHERE UPPER(CIUDAD) = 'CÁDIZ' and TELEFONO is not NULL or 
	 UPPER(CIUDAD) = 'JEREZ' and TELEFONO is null;
--g
SELECT nombre,
	cod_proyecto
FROM PROYECTO P 
WHERE presupuesto > 150000;

--h
SELECT distinct p2.NOMBRE 
FROM PROYECTO P join PLAN P2 using (cod_plan)
WHERE presupuesto > 10000;

--i
SELECT i.nombre,
	p.nombre
FROM INVESTIGADOR I join ASIGNADO_A AA using (cod_investigador)
					join PROYECTO P using (cod_proyecto);

--j
SELECT i.nombre,
	p.nombre
FROM INVESTIGADOR I join ASIGNADO_A AA using (cod_investigador)
					join PROYECTO P using (cod_proyecto)
where UPPER(CIUDAD) = 'CÁDIZ';

--k
SELECT i.nombre,
	p.FINICIO 
FROM INVESTIGADOR I join ASIGNADO_A AA using (cod_investigador)
					join PROYECTO P using (cod_proyecto)
WHERE UPPER(p.nombre) = 'PHOENIX' and UPPER(aa.TIPO_PARTICIPACION) = 'RESPONSABLE'

--l
SELECT DISTINCT p.nombre
FROM INVESTIGADOR I join ASIGNADO_A AA using (cod_investigador)
					join PROYECTO P using (cod_proyecto)
WHERE UPPER(ciudad) = 'SEVILLA';

--m
SELECT DISTINCT I.nombre,
	I.TELEFONO 
FROM INVESTIGADOR I join ASIGNADO_A AA using (cod_investigador)
					join PROYECTO P using (cod_proyecto)
WHERE presupuesto < 50000 and UPPER(aa.TIPO_PARTICIPACION) = 'PRINCIPAL';

--n
SELECT I.nombre
FROM INVESTIGADOR I join ASIGNADO_A AA using (cod_investigador)
					join PROYECTO P using (cod_proyecto)
					join PLAN P2 using (cod_plan)
where UPPER(ent_financiera) = 'ING';

--o
SELECT DISTINCT p.NOMBRE,
	p.COD_PROYECTO
FROM INVESTIGADOR I join ASIGNADO_A AA using (cod_investigador)
					join PROYECTO P using (cod_proyecto)
					join PLAN P2 using (cod_plan)
where UPPER(ciudad) = 'CÁDIZ' and presupuesto < 100000;

--p
SELECT p2.NOMBRE
FROM INVESTIGADOR I join ASIGNADO_A AA using (cod_investigador)
					join PROYECTO P using (cod_proyecto)
					join PLAN P2 using (cod_plan)
WHERE presupuesto > 100000 and UPPER(aa.TIPO_PARTICIPACION) = 'PRINCIPAL' and
	(UPPER(ciudad) = 'SEVILLA' or UPPER(ciudad) = 'CÁDIZ');