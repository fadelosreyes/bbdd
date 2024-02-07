--1. Mostrar los proyectos (código, nombre y presupuesto) formateando los valores del atributo presupuesto para que
--sea de tipo cadena y un formato similar al siguiente XXX.XXX,XX€
--Ordena el resultado por presupuesto de mayor a menor
--Usa los alias: Código Proyecto, Nombre Proyecto y Presupuesto
SELECT COD_PROYECTO AS "Código Proyecto",
    NOMBRE AS "Nombre Proyecto",
    to_char(PRESUPUESTO, '999,999.99L') AS "Presupuesto"
FROM PROYECTO
ORDER BY PRESUPUESTO DESC;


--2. Mostrar los proyectos (código y nombre, y año de comienzo del proyecto)
--Ordena el resultado por nombre de proyecto
--Usa los alias: Código Proyecto, Nombre Proyecto y Año inicio
SELECT COD_PROYECTO as " codigo proyecto",
	NOMBRE as "nombre prooyecto",
	TO_CHAR(FINICIO, 'YYYY')  as "año inicio"
FROM PROYECTO P 

--3. Mostrar los proyectos que han comenzado en años anteriores al 2018 (código y nombre, y año de comienzo del
--proyecto).
--Ordena el resultado por nombre de proyecto
--Usa los alias: Código Proyecto, Nombre Proyecto y Año inicio
SELECT COD_PROYECTO as " codigo proyecto",
	NOMBRE as "nombre prooyecto",
	TO_CHAR(FINICIO, 'YYYY')  as "año inicio"
FROM PROYECTO P 
WHERE TO_CHAR(FINICIO, 'YYYY') < '2018'
order by NOMBRE 

--4. Realiza la consulta que muestre el número de proyectos que han comenzado antes del año 2018
SELECT count(COD_PROYECTO) as "Numero de proyectos"
FROM PROYECTO P 
WHERE TO_CHAR(FINICIO, 'YYYY') < '2018'

--5. ¿Cuántos proyectos han dado comienzo en los meses de febrero?
--Usa el alias: Número Proyectos
SELECT count(COD_PROYECTO) as "Numero de proyectos"
FROM PROYECTO P 
where TO_CHAR(FINICIO, 'MM') = '02'
--6. Muestra el listado de proyectos (código y nombre) con el intervalo de duración de tiempo
--Ordena el resultado por nombre de proyecto
--Usa los alias: Código Proyecto, Nombre Proyecto y Duración
SELECT COD_PROYECTO as " codigo proyecto",
	NOMBRE as "nombre prooyecto",
	FFIN  - FINICIO  as "duracion"
FROM PROYECTO P 

--7. Muestra el listado de proyectos (código y nombre) con una duración de dos años a más
--Ordena el resultado por nombre de proyecto
--Usa los alias: Código Proyecto, Nombre Proyecto.
SELECT 
    COD_PROYECTO AS "Código Proyecto",
    NOMBRE AS "Nombre Proyecto"
FROM 
    PROYECTO
WHERE 
    EXTRACT(YEAR FROM FFIN) - EXTRACT(YEAR FROM FINICIO) >= 2
ORDER BY 
    NOMBRE;

--8. Muestra el listado de proyectos (código y nombre) con una duración inferior a 2 o superior a 4 años
--Ordena el resultado por nombre de proyecto
--Usa los alias: Código Proyecto, Nombre Proyecto.
SELECT 
    COD_PROYECTO AS "Código Proyecto",
    NOMBRE AS "Nombre Proyecto"
FROM 
    PROYECTO
WHERE 
    EXTRACT(YEAR FROM FFIN) - EXTRACT(YEAR FROM FINICIO) < 2 or
    EXTRACT(YEAR FROM FFIN) - EXTRACT(YEAR FROM FINICIO) > 4
ORDER BY 
    NOMBRE;


--9. Mostrar los proyectos (código y nombre), junto con la fecha de inicio y fin
--El formato de la fecha de inicio será “02 de Septiembre de 2018”
--El formato de la fecha de fin será “02 / 09 / 2018”
--Usa los alias: Código Proyecto, Nombre Proyecto, Inicio, Fin
SELECT 
    COD_PROYECTO AS "Código Proyecto",
    NOMBRE AS "Nombre Proyecto",
    TO_CHAR(FINICIO, 'DD "de" FMMonth "de" YYYY') AS "Inicio",
    TO_CHAR(FFIN, 'DD / MM / YYYY') AS "Fin"
FROM 
    PROYECTO;



