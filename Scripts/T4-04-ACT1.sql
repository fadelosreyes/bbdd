--1
SELECT COD_PROYECTO,
	NOMBRE,
	PRESUPUESTO 
FROM PROYECTO P 
WHERE PRESUPUESTO >= 20000 and PRESUPUESTO <= 50000;

--2
SELECT COD_PROYECTO,
	NOMBRE,
	PRESUPUESTO 
FROM PROYECTO P 
WHERE PRESUPUESTO BETWEEN 20000 and 50000;

--3
SELECT COD_PROYECTO,
	NOMBRE,
	PRESUPUESTO 
FROM PROYECTO P 
WHERE PRESUPUESTO < 20000 or PRESUPUESTO > 50000;

--4
SELECT COD_PROYECTO,
	NOMBRE,
	PRESUPUESTO 
FROM PROYECTO P 
WHERE PRESUPUESTO NOT BETWEEN 20000 and 50000;

--5
SELECT COD_PLAN as "Código Plan",
	P2.NOMBRE as "Nombre Plan",
	cod_proyecto as "Codigo Proyecto",
	P.NOMBRE as "Nombre Proyecto",
	presupuesto as "Presupuesto"
FROM PLAN P join PROYECTO P2 using (COD_PLAN)
WHERE PRESUPUESTO >= 20000 and PRESUPUESTO <= 50000;

--6
SELECT COD_PLAN as "Código Plan",
	P.NOMBRE as "Nombre Plan",
	cod_proyecto as "Codigo Proyecto",
	P2.NOMBRE as "Nombre Proyecto",
	presupuesto as "Presupuesto"
FROM PLAN P join PROYECTO P2 using (COD_PLAN)
WHERE PRESUPUESTO BETWEEN 20000 and 50000;

--7
SELECT DISTINCT COD_PLAN as "Código Plan",
	P.NOMBRE as "Nombre Plan"
FROM PLAN P join PROYECTO P2 using (COD_PLAN)
WHERE PRESUPUESTO BETWEEN 20000 and 50000;

--8
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador"
FROM INVESTIGADOR I 
WHERE NOMBRE LIKE 'S%'
ORDER BY NOMBRE asc; 

--9
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador"
FROM INVESTIGADOR I 
WHERE NOMBRE NOT LIKE 'C%'
ORDER BY NOMBRE; 

--10
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador"
FROM INVESTIGADOR I 
WHERE NOMBRE LIKE '%o%'
ORDER BY NOMBRE; 

--11
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador"
FROM INVESTIGADOR I 
WHERE NOMBRE LIKE '%L%' or NOMBRE LIKE '%l%'
ORDER BY NOMBRE asc; 

--12****
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador"
FROM INVESTIGADOR I 
WHERE NOMBRE LIKE '%L%' or NOMBRE LIKE '%l%'
ORDER BY NOMBRE asc;

--13
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador",
	(SALARIO * 12) as "Sueldo anual"
FROM INVESTIGADOR I
ORDER BY NOMBRE;

--14
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador",
	(SALARIO * 12) as "Sueldo anual"
FROM INVESTIGADOR I 
WHERE SALARIO > 1500 or UPPER(CIUDAD) = 'CADÍZ' 
ORDER BY NOMBRE;

--15
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador",
	(SALARIO * 12) as "Sueldo anual"
FROM INVESTIGADOR I 
WHERE (SALARIO * 12) > 21600
ORDER BY NOMBRE;

--16
SELECT COD_INVESTIGADOR as "Codigo investigador",
	NOMBRE as "investigador",
	ROUND(SALARIO * 12, 2) as "Sueldo Bruto",
	ROUND(SALARIO * 15 / 100, 2) as "IRPF",
	ROUND(SALARIO * 12 * 85 / 100, 2) as "Sueldo neto"
FROM INVESTIGADOR I 
ORDER BY SALARIO desc;

--17
SELECT MAX(salario),
	MIN(salario),
	AVG(salario)
FROM INVESTIGADOR I 

--18
SELECT COUNT(nombre)
from INVESTIGADOR I 

--19
SELECT count(DISTINCT ciudad)
from INVESTIGADOR I 

--20
SELECT COUNT(TELEFONO)
from INVESTIGADOR I 

--21
SELECT count(nombre)
from PROYECTO P
WHERE PRESUPUESTO > 20000 and  PRESUPUESTO < 50000

--22
select COD_PROYECTO,
	NOMBRE,
	PRESUPUESTO,
	(PRESUPUESTO * 19 / 100) as "iva",
	(PRESUPUESTO * 19 / 100 + PRESUPUESTO) as "total"
FROM PROYECTO P 

--23
select COD_PROYECTO,
	NOMBRE,
	PRESUPUESTO,
	presupuesto * 166.886 AS pesetas,
    presupuesto * 1.11 AS dolares,
    presupuesto * 1.10 AS libras
FROM PROYECTO P 

--24
select COD_PROYECTO,
	NOMBRE,
	PRESUPUESTO,
	(PRESUPUESTO * 10 / 100) as "desc",
	(PRESUPUESTO * 0.90) as "+ desc",
	(PRESUPUESTO * 19 / 100) as "iva",
	(PRESUPUESTO * 19 / 100 + PRESUPUESTO) as "total"
FROM PROYECTO P  

--25
SELECT nombre AS Nombre,
    LENGTH(nombre) AS Longitud
FROM investigador;

--26
SELECT 
FROM 

--27
SELECT NOMBRE 
FROM INVESTIGADOR I 
WHERE LOWER(NOMBRE) like '%a' or LOWER(NOMBRE) like '%á%'  




































































































