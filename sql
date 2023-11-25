Actualizar descripción del Sector:
El siguiente procedimiento, nos permite actualizar la descripción del sector de la tabla SectorEmpresas.



 
CREATE PROCEDURE ActualizarSector  
@id int, 
@description varchar(200) 
AS  
update Sectores  
set descripcion = @description 
Where id_sector = @id 
GO 
  
Actualizar descripción Tipo Trabajo:
El siguiente procedimiento, nos permite actualizar la descripción del tipo de trabajo de la tabla TipoTrabajo
 
CREATE PROCEDURE ActualizarTipoTrabajo 
@id int, 
@description varchar(200) 
AS  
update tipo_trabajo 
set descripcion = @description 
Where id_tipo_trabajo = @id 
GO 
 
  



Empresa con más reclutadores
La siguiente función, nos permite visualizar las empresas con más reclutadores.
 
create function empresaconmasreclutadores() RETURNS VARCHAR(20)
AS
BEGIN
DECLARE @MAXIMO VARCHAR(20)
select top 1 @MAXIMO = count(B.id_reclutador)
from empresas A
left join reclutadores B
on A.id_empresa = B.id_empresa
GROUP BY nombre_comercial
ORDER BY count(B.id_reclutador) DESC
RETURN @MAXIMO
END
 
print dbo.empresaconmasreclutadores()
  
Empresas por rangos de reclutadores:
El siguiente procedimiento, nos permite hallar las empresas entre rangos de reclutadores. 
create procedure nroreclutadoresxempresa
@min int,
@max int
as
select A.nombre_comercial, count(*) 
from empresas A
left join reclutadores B
on A.id_empresa = B.id_empresa
group by nombre_comercial
having count(*) between @min and @max
  
Idiomas por CV:
El siguiente procedimiento, nos permite visualizar el número de idiomas que posee el CV del aspirante.
create procedure idiomasencvs
@numcvs int
as
select id_cv, count(id_idioma) as CantidadIdiomas
from idiomas_cvs 
group by id_cv
having @numcvs <= count(id_idioma)
 
execute idiomasencvs 4
  
Estado del CV:
El siguiente procedimiento, nos permite visualizar el estado del CV si este se encuentra ACEPTADO o no.
create procedure Conoceelestadodetucv
@id varchar(20)
as
select A.id_cv, B.estado 
from cvs A
left join estados B
ON A.Estados_id_estado = B.id_estado
where id_cv = @id
 
execute Conoceelestadodetucv 1
 

Filtrar cargos de acuerdos al salario:
El siguiente procedimiento, nos permite visualizar los cargos disponibles de acuerdo al salario que buscas. 
create procedure cargoxsalario
@salariomin int
as
select cargo, salario
from cargos
where salario >= @salariomin
 
execute cargoxsalario 4000
  
 
Filtra ofertas por salario:
El siguiente procedimiento, nos permite filtrar las ofertas de acuerdo al salario establecido.
create procedure ofertaxsalario
@salariomin int
as
select A.id_oferta, B.salario
from ofertas_empleo A
left join cargos B
ON A.id_cargo = B.id_cargo
where B.salario >= @salariomin
 
Número de empresas por sector:
La siguiente función, nos permite visualizar el número de empresas que existen por sector.
create function numerodeempresarxsector(@nombresector varchar(20)) returns int
as 
begin
declare @c int
select @c = count(B.id_empresa)
from sectores A
left join empresas B 
ON A.id_sector=B.sectores_id_sector
group by A.sector
return @c
end
print dbo.numerodeempresarxsector('primario')

 
Ver descripción por sector:
La siguiente función, nos permite visualizar la descripción por sector de empresa que existen por sector.
create function descripcionxsector(@nombresector varchar(10)) returns varchar(200)
as 
begin
declare @c varchar(200)
select @c = descripcion
from sectores Ar
where sector = @nombresector
return @c
end
print dbo.descripcionxsector('primario')

 

4.6.2.	Non-Relational Database Queries
En esta sección, mostraremos las consultas en MongoDB utilizando el programa Robo3T; hemos considerado los siguientes Queries para nuestra base de datos no-relacional.
Queries de Consulta MongoDB: https://github.com/AlessandroUPC/MongoDB-ChambaYA

Consulta Sector laboral por duracion en el puesto
El siguiente Querie nos muestra el sector en el  laburo y la duracion que tuvo en ese puesto. Este Querie nos permite buscar el sector laboral Tecnologia para trabajadores que han trabajado una duracion de 2 años:
db.Cvs.find({
  'experiencia_Cv.sector_laboral': 'Tecnologia',
  'experiencia_Cv.duracion': '2 años'
})
 



Consulta que muestre el archivo, la presentacion, los idiomas y la experincia laboral
El siguiente Querie nos muestra el archivo, la presentación, los idiomas y el sector laboral de la experiencia.
db.Cvs.find({}, { archivo: 1, presentacion: 1, "idiomas_Cv.idioma": 1, "experiencia_Cv.sector_laboral": 1 })
Este Querie retornará el archivo, la presentación, los idiomas y el sector laboral de la experiencia de cada aspirante almacenado en la colección "Cvs".
