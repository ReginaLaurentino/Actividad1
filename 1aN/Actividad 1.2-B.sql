create database Actividad_1_2_B
go

use Actividad_1_2_B
go


/*Para la relacion 1:N pensamos en 2 tablas los datos personales de una persona, con relacion a otra tabla que va a contener la localidad.*/

create table Localidades(
CodLocalidad smallint not null primary key,
Nombre varchar(30) not null 
)
go

create table persona(
DNI int not null primary key,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
NombreCalle varchar(30) not null,
Num_Piso tinyint null, 
Num_calle smallint not null,
Descripcion varchar(75),
CodLocalidad  smallint foreign key references Localidades(CodLocalidad) 

)
go