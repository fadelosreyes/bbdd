--1. Proyecto (código y nombre) que tienen el menor presupuesto
select  COD_PROYECTO  as "codigo",
	NOMBRE as "nombre"
FROM PROYECTO P2  
WHERE PRESUPUESTO = (select MIN(presupuesto)
					from PROYECTO P)

--2. Investigadores que viven en la misma ciudad que el investigador con código 8
SELECT COD_INVESTIGADOR as "codigo",
	NOMBRE as "nombre"
FROM INVESTIGADOR I 
WHERE CIUDAD  = (select CIUDAD 
							from INVESTIGADOR
							where COD_INVESTIGADOR = 8)

--3. Investigadores que en algunos de los proyectos en los que trabaja el investigador 12
SELECT I.COD_INVESTIGADOR as "codigo",
	NOMBRE as "nombre"
FROM INVESTIGADOR I join ASIGNADO_A AA on (I.cod_investigador = AA.COD_INVESTIGADOR)
WHERE COD_PROYECTO in (select COD_PROYECTO 
						from ASIGNADO_A
						where COD_INVESTIGADOR = 12)						


--4. Listado de planes (Código y nombre), que no tienen proyectos
SELECT P.COD_PLAN AS "Código",
       P.NOMBRE AS "Nombre"
FROM PLAN P
LEFT JOIN PROYECTO PR ON P.COD_PLAN = PR.COD_PLAN
WHERE PR.COD_PROYECTO IS NULL;


--5. Listado de investigadores (Código y nombre) que no participan en ningún proyecto
SELECT COD_INVESTIGADOR as "codigo",
	nombre as "nombre"
FROM INVESTIGADOR I left join ASIGNADO_A AA using (cod_investigador)
WHERE COD_PROYECTO is null






