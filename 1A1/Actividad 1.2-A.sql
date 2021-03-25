create database Actividad_1_2_A
go

use Actividad_1_2_A
go


/*Para la relación 1:1 creamos 2 tablas productos y codigo donde la relación es complementaria */

create table Codigo(
CodBarra int not null primary key,
CodigoInterno int not null 
)
go

create table Producto(
CodBarra  int not null primary key foreign key references Codigo(CodBarra), 
Descripcion varchar(30) not null,
unidades tinyint not null,
precio money not null

)
go